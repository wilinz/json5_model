import 'dart:io';
import 'package:args/args.dart';
import 'package:path/path.dart' as path;
import 'build_runner.dart' as br;
import 'package:json5/json5.dart';

class Class {
  late String _name;
  final String rawName;
  List<Field> fields;

  Class(String name, this.rawName, this.fields) {
    _name = name
        .sanitize()
        .underlineToHumpNaming(true) // 处理内置类冲突
        .safeName(); // 处理关键字冲突
  }

  String get name => _name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Class && name == other.name;

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() => 'Class{name: $name, fields: $fields}';
}

class Field {
  String type;
  late String _name;
  final String rawName;
  bool isLate;
  bool nullable;

  Field(this.type, String name, this.rawName, this.isLate, this.nullable) {
    _name = name.sanitize().underlineToHumpNaming(false).safeName(); // 字段名安全处理
  }

  String get name => _name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Field && name == other.name;

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() => 'Field{type: $type, name: $name}';

  Field copyWith({String? type, String? name, bool? isLate, bool? nullable}) =>
      Field(
        type ?? this.type,
        name ?? this.name,
        rawName,
        isLate ?? this.isLate,
        nullable ?? this.nullable,
      );
}

class ListField extends Field {
  String subtype;

  ListField(String type, this.subtype, String name, bool isLate, bool nullable)
      : super(type, name, name, isLate, nullable) {
    subtype = subtype.safeName(); // 泛型参数安全处理
  }
}

// Dart file template
const jsonAnnotation = "import 'package:json_annotation/json_annotation.dart'";
const dartFileTpl = """%s

part '%s.g.dart';

%s
""";
const tpl = """
%s@JsonSerializable(explicitToJson: true)
class %s %s{

  %s
%s
  factory %s.fromJson(Map<String, dynamic> json) => _\$%sFromJson(json);
  
  Map<String, dynamic> toJson() => _\$%sToJson(this);
  
  factory %s.emptyInstance() => %s(%s);
  
  %s
}

""";

const topListTpl = """List<%s> %sListFormJson(List json) =>
    json.map((e) => %s.fromJson(e as Map<String, dynamic>)).toList();

List<Map<String, dynamic>> %sListToJson(List<%s> instance) =>
    instance.map((e) => e.toJson()).toList();""";

// @Autoequal()
// @CopyWith()
// @JsonSerializable(explicitToJson: true)
Future<void> main(List<String> args) async {
  String? src;
  String? dist;
  String? tag;
  String? prefixRegexp;
  bool noCopyWith = false;
  bool noAutoequal = false;
  bool noFilePrefix = false;
  bool restore = false;
  bool clean = false;
  bool keepSource = false;
  final parser = ArgParser();
  parser.addOption(
    'src',
    defaultsTo: './jsons',
    callback: (v) => src = v,
    help: "Specify the Json directory.",
  );
  parser.addOption(
    'dist',
    defaultsTo: 'lib/models',
    callback: (v) => dist = v,
    help: "Specify the dist directory.",
  );

  parser.addOption(
    'tag',
    defaultsTo: '\$',
    callback: (v) => tag = v,
    help: "Specify the tag ",
  );

  parser.addFlag(
    'nocopywith',
    callback: (v) => noCopyWith = v,
    help: "Disable generating copyWith methods for model classes",
    negatable: false,
  );

  parser.addFlag(
    'noautoequal',
    callback: (v) => noAutoequal = v,
    help:
        "Disable generating equality comparison (Autoequal) for model classes",
    negatable: false,
  );

  parser.addFlag(
    'no-file-prefix',
    callback: (v) => noFilePrefix = v,
    help: "Don't prefix the file name to the class name",
    negatable: false,
  );

  parser.addOption(
    'prefix-regexp',
    defaultsTo: '(.+?)',
    callback: (v) => prefixRegexp = v,
    help:
        "The first matching string obtained by applying a regular expression to the file name is prefixed with the class name",
  );

  parser.addFlag(
    'restore',
    callback: (v) => restore = v,
    help: "Restore all JSON files that were renamed with '_' prefix",
    negatable: false,
  );

  parser.addFlag(
    'keepsource',
    callback: (v) => keepSource = v,
    help:
        "Keep original JSON source files after generation (don't rename with '_' prefix)",
    negatable: false,
  );

  parser.addFlag('clean', callback: (v) => clean = v);

  parser.parse(args);

  if (restore) {
    restoreRenamedFiles(src!);
  } else if (clean) {
    br.run(['clean']);
  } else {
    var files = <String>[];
    final isGenerated = generateModelClass(src!, dist!, tag!,
        noCopyWith: noCopyWith,
        noAutoequal: noAutoequal,
        noFilePrefix: noFilePrefix,
        prefixRegexp: prefixRegexp!,
        keepSource: keepSource, onGenerate: (f) {
      files = f;
    });
    if (isGenerated) {
      await br.run(['build', '--delete-conflicting-outputs']);
      final all = files.map((e) => path.join(path.dirname(e), '*'));
      Process.run('git', ['add', ...all]).then((ProcessResult result) {
        if (result.exitCode == 0) {
          print('git add succeed');
        } else {
          print('git add fail');
        }
      }).catchError((error) {
        print('git add fail: $error');
      });
    }
  }
}

bool generateModelClass(
  String srcDir,
  String distDir,
  String tag, {
  required bool keepSource,
  required bool noCopyWith,
  required bool noAutoequal,
  required bool noFilePrefix,
  required String prefixRegexp,
  Function(List<String> allGeneratedFiles)? onGenerate,
}) {
  if (srcDir.endsWith("/")) srcDir = srcDir.substring(0, srcDir.length - 1);
  if (distDir.endsWith("/")) distDir = distDir.substring(0, distDir.length - 1);

  final src = Directory(srcDir);
  final fileList = src.listSync(recursive: true);
// String indexFile = "";
  if (fileList.isEmpty) return false;
  if (!Directory(distDir).existsSync()) {
    Directory(distDir).createSync(recursive: true);
  }

  File file;

  List<String> allGeneratedFiles = List.empty(growable: true);

  fileList.forEach((f) {
    if (FileSystemEntity.isFileSync(f.path)) {
      file = File(f.path);
      final ext = path.extension(f.path);
      final String fileName = path.basenameWithoutExtension(f.path);

      final jsonExt = ".json";
      final json5Ext = ".json5";
      final isJson = ext.toLowerCase() == jsonExt;
      final isJson5 = ext.toLowerCase() == json5Ext;
      if ((!isJson && !isJson5) || fileName.startsWith("_")) return;

      final relative = path.relative(f.path, from: srcDir);
      var dartFilePath =
          path.join(distDir, path.setExtension(relative, ".dart"));
      dartFilePath = path.join(
          path.dirname(dartFilePath),
          path.basenameWithoutExtension(dartFilePath),
          path.basename(dartFilePath));

      final json = json5Decode(file.readAsStringSync());
//generated class name
      final className = fileName.underlineToHumpNaming(true).safeName();

      final re = RegExp(prefixRegexp).firstMatch(fileName)?.group(1);
      final filePrefix = noFilePrefix ? "" : re ?? className;
      final level = 0;

      var classes = List<Class>.empty(growable: true);
      if (json is List) {
        handleList(classes, className, json, filePrefix, level);
      } else if (json is Map<String, dynamic>) {
        handleClass(classes, className, json, filePrefix, level);
        classes.forEach((c) {
          c.fields.forEach((f) {
            if (f.type == "Null") {
              f.type = "dynamic";
              f.nullable = true;
            }
          });
        });
      }
      classes = classes.toSet().toList();

// To ensure that import statements are not repeated,
// we use Set to save import statements
      final importSet = Set<String>();

      importSet.add(jsonAnnotation);

      final classesStr = StringBuffer();
      final topClassIndex = classes.indexWhere((c) => c.name == className);
      if (topClassIndex >= 0) {
        final topClass = classes[topClassIndex];
        classes
          ..removeAt(topClassIndex)
          ..insert(0, topClass);
      }

      classes.forEach((c) {
        String constructorStr = "";
        String fieldsStr = "";

        if (c.fields.isEmpty) {
          constructorStr = "${c.name}();";
        } else {
          final constructor = StringBuffer();
          constructor.write("${c.name}(\n      {");
          final fieldsStringBuilder = StringBuffer();
          var i = 0;
          c.fields.forEach((f) {
            if (f.nullable && f.type != "dynamic") {
              f.type = f.type + "?";
            }
            final required = f.nullable ? "" : "required ";
            final pad = i == 0 ? "" : "      ";
            final constructorField = "${pad}${required}this.${f.name},\n";

            String? defaultValue;
            if (f.type == "String") {
              defaultValue = "\"\"";
            } else if (f.type == "int") {
              defaultValue = "0";
            } else if (f.type == "double") {
              defaultValue = "0.0";
            } else if (f.type == 'List' || f.type.startsWith("List<")) {
              defaultValue = "[]";
            } else if (f.type == "bool") {
              defaultValue = "false";
            } else if (!f.nullable) {
              defaultValue = "${f.type}.emptyInstance";
            }
            final defaultValueStr =
                defaultValue != null ? ", defaultValue: ${defaultValue}" : "";

            constructor.write(constructorField);
// final late = f.nullable ? "" : "late ";
            final isFinal = !noAutoequal;
            final finalStr = isFinal ? "final " : "";
            fieldsStringBuilder
                .write("  @JsonKey(name: \"${f.rawName}\"$defaultValueStr)\n");
            fieldsStringBuilder.write("  ${finalStr}${f.type} ${f.name};\n\n");
            i++;
          });
          fieldsStr = "\n" + fieldsStringBuilder.toString();
          constructorStr = constructor.toString();
          constructorStr =
              constructorStr.substring(0, constructorStr.length - 2) + "});";
        }

// 构建构造函数默认参数
        final defaultValuesStr = StringBuffer();
        c.fields.forEach((f) {
          String defaultValue;
          switch (f.type.replaceAll("?", "")) {
// 移除可空标记以简化类型匹配
            case "String":
              defaultValue = '""';
              break;
            case "int":
            case "double":
              defaultValue = "0";
              break;
            case "bool":
              defaultValue = "false";
              break;
            default:
              if (f.type == 'List' || f.type.startsWith("List<")) {
                defaultValue = "[]";
              } else {
// 对于复杂类型，我们假设它们有一个名为 `emptyInstance` 的工厂构造函数
                defaultValue = "${f.type.replaceAll("?", "")}.emptyInstance()";
              }
              break;
          }
          if (!f.nullable) {
            defaultValuesStr.write("${f.name}: $defaultValue, ");
          }
        });

// 移除最后的逗号和空格
        var defaultValues =
            defaultValuesStr.toString().replaceAll(RegExp(r", $"), "");

        final annotations = StringBuffer();
        final autoEqualMixin = StringBuffer();
        final autoEqualProps = StringBuffer();

        final noCopyWith1 = c.fields.isEmpty || noCopyWith;
        if (!noCopyWith1) {
          annotations.write("@CopyWith()\n");
          importSet.add(
              "import 'package:copy_with_extension/copy_with_extension.dart'");
        }
        if (!noAutoequal) {
          annotations.write("@Autoequal()\n");
          autoEqualMixin.write("with EquatableMixin ");
          autoEqualProps
              .write("@override\n  List<Object?> get props => _\$props;");
          importSet.add("import 'package:equatable/equatable.dart'");
          importSet.add("import 'package:autoequal/autoequal.dart'");
        }

// 使用新的占位符值调用 replaceTemplate
        classesStr.write(replaceTemplate(tpl, [
          annotations.toString(),
          c.name,
          autoEqualMixin.toString(),
          constructorStr,
          fieldsStr.toString(),
          c.name,
          c.name,
          c.name,
          c.name, // 新增：用于emptyInstance的类名
          c.name, // 新增：用于emptyInstance的构造函数调用
          defaultValues, // 新增：构造函数的默认参数
          autoEqualProps.toString(),
        ]));
      });

      String topListFunction = "";
      if (json is List) {
        topListFunction = replaceTemplate(topListTpl, [
          className,
          className.firstToLowerCase(),
          className,
          className.firstToLowerCase(),
          className
        ]);
      }

// Insert the imports at the head of dart file.
      var _import = importSet.join(";\r\n");
      _import += _import.isEmpty ? "" : ";";

      final body = topListFunction.isNotEmpty
          ? topListFunction + "\n\n" + classesStr.toString()
          : classesStr.toString();
      final dist = (replaceTemplate(dartFileTpl,
          [_import, path.basenameWithoutExtension(dartFilePath), body]));
      File(dartFilePath)
        ..createSync(recursive: true)
        ..writeAsStringSync(dist);

      var sourceFilePath = file.path;
      if (!keepSource) {
        final newName = "_" + path.basename(file.path);
        sourceFilePath = path.join(file.parent.path, newName);
        file.renameSync(sourceFilePath);
      }

      allGeneratedFiles.add(dartFilePath);

      Process.run('git', ['add', sourceFilePath]).then((ProcessResult result) {
        if (result.exitCode == 0) {
          print('git add succeed');
        } else {
          print('git add fail');
        }
      }).catchError((error) {
        print('git add fail: $error');
      });

// indexFile = exportIndexFile(
//     className, json is List, dartFilePath, distDir, indexFile);
// print('done: ${f.path} -> $dartFilePath');
    }
  });
// if (indexFile.isNotEmpty) {
//   final p = path.join(distDir, "index.dart");
//   File(p).writeAsStringSync(indexFile);
//   print('create index file: $p');
// }
  print("src directory：" + path.canonicalize(srcDir));
  print("dist directory：" + path.canonicalize(distDir));
  onGenerate?.call(allGeneratedFiles);
  return true;
}

extension StringExt on String {
  String firstToUpperCase() {
    return this[0].toUpperCase() + this.substring(1);
  }

  String firstToLowerCase() {
    return this[0].toLowerCase() + this.substring(1);
  }

  String joinName(String name) {
    return this + name.firstToUpperCase();
  }

  String underlineToHumpNaming(bool firstUpperCase) {
    if (this.startsWith("_")) return this;
    if (!contains("_")) {
      return firstUpperCase ? this.firstToUpperCase() : this.firstToLowerCase();
    }
    ;
    final list = this.split("_");
    final str = StringBuffer();
    var i = 0;
    for (final value in list) {
      if (i == 0) {
        final s = firstUpperCase
            ? value.firstToUpperCase()
            : value.firstToLowerCase();
        str.write(s);
      } else {
        str.write(value.firstToUpperCase());
      }
      i++;
    }
    return str.toString();
  }

  String sanitize() {
    // 替换所有非字母数字和下划线的字符为下划线
    String sanitized = replaceAll(RegExp(r'[^a-zA-Z0-9_]'), '_');
    // 合并连续下划线
    sanitized = sanitized.replaceAll(RegExp(r'_+'), '_');
    // 去除首尾下划线
    sanitized = sanitized.replaceAll(RegExp(r'^_+|_+$'), '');
    // 处理空结果
    if (sanitized.isEmpty) return 'empty';
    // 处理数字开头
    if (RegExp(r'^[0-9]').hasMatch(sanitized)) {
      sanitized = 'n$sanitized';
    }
    return sanitized;
  }

// 关键字处理（添加X后缀）
  String safeName() {
    const keywords = {
      'abstract', 'as', 'assert', 'async', 'await', 'break', 'case', 'catch',
      'class', 'const', 'continue', 'covariant', 'default', 'deferred', 'do',
      'dynamic', 'else', 'enum', 'export', 'extends', 'extension', 'external',
      'factory', 'false', 'final', 'finally', 'for', 'Function', 'get', 'hide',
      'if', 'implements', 'import', 'in', 'interface', 'is', 'late', 'library',
      'mixin', 'new', 'null', 'on', 'operator', 'part', 'required', 'rethrow',
      'return', 'set', 'show', 'static', 'super', 'switch', 'sync', 'this',
      'throw', 'true', 'try', 'typedef', 'var', 'void', 'while', 'with',
      'yield' //
    };
    const dartBuiltInTypes = {
// Dart 核心库
      'Object', 'Enum', 'Never', 'Future', 'Stream', 'Iterable', 'Iterator',
      'Symbol', 'Type', 'Function', 'Pattern', 'RegExp', 'Uri',

// 基础类型
      'num', 'int', 'double', 'String', 'bool', 'Null', 'dynamic', 'void',

// 集合类型
      'List', 'Set', 'Map', 'Queue', 'LinkedList', 'HashMap', 'LinkedHashMap',
      'HashSet', 'LinkedHashSet', 'UnmodifiableListView',
      'UnmodifiableMapView', //

// 日期时间
      'DateTime', 'Duration', 'Stopwatch',

// 数学相关
      'BigInt', 'Random', 'Rectangle', 'Point', 'Offset',

// 异步/隔离
      'Completer', 'SynchronousFuture', 'Timer', 'Zone', 'Isolate',
      'ReceivePort', 'SendPort', 'StreamController', 'StreamSubscription', //

// 错误处理
      'Error', 'Exception', 'StackTrace', 'AssertionError', 'FormatException',
      'RangeError', 'StateError', 'UnsupportedError', 'ArgumentError', //

// Flutter 常用
      'Widget', 'BuildContext', 'Key', 'State', 'StatefulWidget',
      'StatelessWidget', 'MaterialApp', 'Scaffold', 'Text', 'Column', 'Row',
      'Container', 'ListView', 'AppBar', 'Theme', 'Navigator', 'Overlay',
      'FocusNode', 'ScrollController', //

// IO 相关
      'File', 'Directory', 'Link', 'Process', 'HttpClient', 'Socket',
      'WebSocket', 'Platform', 'Stdout', 'Stdin', //

// 序列化/JSON
      'JsonCodec', 'Utf8Codec', 'JsonEncoder', 'JsonDecoder',

// 其他高频
      'ChangeNotifier', 'ValueNotifier', 'TextEditingController', 'Animation',
      'AnimationController', 'FocusScope', 'FormField', 'Route', 'Canvas',
      'Paint', 'Path', 'Image', 'AssetBundle', 'Locale', 'Semantics', //

// 测试相关
      'Test', 'Mock', 'Fake', 'Expect', 'Matcher' //
    };
    return keywords.contains(this) || dartBuiltInTypes.contains(this)
        ? '${this}X'
        : this;
  }
}

String getType(v) {
  if (v is String) {
    return "String";
  } else if (v is int) {
    return "int";
  } else if (v is double) {
    return "double";
  } else if (v is bool) {
    return "bool";
  } else if (v == null) {
    return "Null";
  }
  return "dynamic";
}

Class handleClass(List<Class> classes, String name, Map<String, dynamic> json,
    String filePrefix, int level) {
  final fields = List<Field>.empty(growable: true);
  json.forEach((key, v) {
    fields.add(handleValue(classes, key, v, filePrefix, level + 1));
    fields.forEach((f) {
      if (f.type == "Null") {
        f.nullable = true;
      }
    });
  });
  final className = level != 0 ? filePrefix.joinName(name) : name;
  final class1 = Class(className, name, fields);
  classes.add(class1);
  return class1;
}

Field handleValue(
    List<Class> classes, String name, v, String filePrefix, int level) {
  final type = getFieldType(v, classes, name, filePrefix, level + 1);
  bool nullable = false;
  if (type == "Null") {
    nullable = true;
  }
  if (type is Class) {
    return Field(type.name, name, name, true, false);
  } else {
    return Field(type as String, name, name, true, nullable);
  }
}

dynamic getFieldType(
    v, List<Class> classes, String name, String filePrefix, int level) {
  String type;
  Class? childClass = null;
  if (v is Map<String, dynamic>) {
    childClass = handleClass(classes, name, v, filePrefix, level + 1);
    type = childClass.name;
  } else if (v is List) {
    final field = handleList(classes, name, v, filePrefix, level + 1);
    type = field.type;
  } else {
    type = getType(v);
  }
  return childClass ?? type;
}

Field handleList(
    List<Class> classes, String name, List list, String filePrefix, int level) {
  final types = <dynamic>[];
  list.forEach((v) {
    final type = getFieldType(v, classes, name, filePrefix, level + 1);
    types.add(type);
  });

  if (types.isEmpty) return Field("List", name, name, true, true);

// 处理所有元素都是 Map 的情况
  final allMaps = types.every((t) => t is Class || t == "Null");
  final nullable = types.any((t) => t == "Null");
  if (allMaps) {
    final classList = types.where((e) => e is Class).cast<Class>();
    final mergedClassName =
        '${name.underlineToHumpNaming(true)}Item'.safeName();

// 收集所有字段名
    final allFieldNames = <String>{};
    for (final cls in classList) {
      for (final field in cls.fields) {
        allFieldNames.add(field.name);
      }
    }

// 合并每个字段
    final mergedFields = <Field>[];
    for (final fieldName in allFieldNames) {
      final existingFields = <Field>[];
      for (final cls in classList) {
        final field = cls.fields.firstWhereOrNull((f) => f.name == fieldName);
        if (field != null) existingFields.add(field);
      }

// 合并类型逻辑
      final typeList =
          existingFields.map((f) => f.type.replaceAll('?', '')).toList();
      String mergedType = mergeTypes(typeList);

// 处理可空性：字段不存在于所有 Map 中，或任一值为 null
      final existsInAll = existingFields.length == classList.length;
      final hasNullValue = list.where((e) => e != null).any((item) {
        final map = item as Map<String, dynamic>;
        return !map.containsKey(fieldName) || map[fieldName] == null;
      });

      mergedFields.add(Field(
        mergedType,
        fieldName,
        existingFields.firstOrNull()?.rawName ?? fieldName,
        true,
        !existsInAll || hasNullValue,
      ));
    }

    final mergedClass = Class(
        filePrefix.joinName(mergedClassName), mergedClassName, mergedFields);
    for (final class_ in classList) {
      classes.remove(class_);
    }
    classes.add(mergedClass);
    return ListField(
        "List<${mergedClass.name}>", mergedClass.name, name, true, nullable);
  }

// 处理基本类型列表
  final basicTypes = types.whereType<String>().toList();
  if (basicTypes.isNotEmpty) {
// 分离 null 标记
    final hasNull = basicTypes.contains('Null');
    final filteredTypes = basicTypes.where((t) => t != 'Null').toList();

// 类型合并逻辑
    String mergedType = mergeTypes(filteredTypes);

// 处理数值类型升级
    if (filteredTypes.contains('double') && filteredTypes.contains('int')) {
      mergedType = 'double';
    }

// 添加可空标记
    if (hasNull || mergedType.isEmpty) {
      mergedType = mergedType.isEmpty ? 'dynamic' : '$mergedType?';
    }

    return Field("List<$mergedType>", name, name, true, hasNull);
  }

// 混合类型或无法处理的情况
  return Field("List", name, name, true, true);
}

String mergeTypes(List<String> types) {
  if (types.isEmpty) return 'dynamic';

// 类型优先级
  const typePriority = ['double', 'int', 'String', 'bool'];
  for (final type in typePriority) {
    if (types.contains(type)) return type;
  }

// 统一类型检查
  final uniqueTypes = types.toSet();
  return uniqueTypes.length == 1 ? uniqueTypes.first : 'dynamic';
}

extension ListExt<E> on Iterable<E> {
  E? firstOrNull() {
    try {
      return first;
    } catch (e) {}
    return null;
  }

  E? firstWhereOrNull(bool test(E element), {E orElse()?}) {
    try {
      return firstWhere(test, orElse: orElse);
    } catch (e) {}
    return null;
  }
}

String exportIndexFile(String exportClassName, bool isList, String p,
    String distDir, String indexFile) {
  final relative = p.replaceFirst(distDir + path.separator, "");
  final exportStr = StringBuffer();
  exportStr.write(exportClassName);
  if (isList) {
    final pre = exportClassName.firstToLowerCase();
    exportStr.write(", ${pre}ListFormJson, ${pre}ListToJson");
  }
  indexFile +=
      "export '${relative.replaceAll("\\", "/")}' show ${exportStr}; \n";
  return indexFile;
}

String replaceTemplate(String template, List<Object> params) {
  int matchIndex = 0;
  String replace(Match m) {
    if (matchIndex < params.length) {
      switch (m[0]) {
        case "%s":
          return params[matchIndex++].toString();
      }
    } else {
      throw Exception("Missing parameter for string format");
    }
    throw Exception("Invalid format string: " + m[0].toString());
  }

  return template.replaceAllMapped("%s", replace);
}

void restoreRenamedFiles(String srcDir) {
  final src = Directory(srcDir);
  final fileList = src.listSync(recursive: true);

  fileList.forEach((f) {
    if (FileSystemEntity.isFileSync(f.path)) {
      final fileName = path.basename(f.path);
      if (fileName.startsWith('_')) {
        final originalName = fileName.substring(1);
        final originalPath = path.join(path.dirname(f.path), originalName);
        File(f.path).renameSync(originalPath);
        print('Restored: ${f.path} -> $originalPath');
      }
    }
  });
}
