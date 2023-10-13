import 'dart:io';
import 'package:args/args.dart';
import 'package:path/path.dart' as path;
import 'build_runner.dart' as br;
import 'package:json5/json5.dart';

class Class {
  late String _name;

  final String rawName;

  set name(String v) {
    _name = v.underlineToHumpNaming(true);
  }

  String get name => _name;

  List<Field> fields;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Class && runtimeType == other.runtimeType && name == other.name;

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() {
    return 'Class{name: $name, fields: $fields}';
  }

  Class(String name, this.rawName, this.fields) {
    this.name = name.underlineToHumpNaming(true);
  }
}

class Field {
  String type;
  late String _name;

  final String rawName;

  set name(String v) {
    _name = v.underlineToHumpNaming(false);
  }

  String get name => _name;
  bool isLate;
  bool nullable;

  Field(this.type, String name, this.rawName, this.isLate, this.nullable) {
    this.name = name;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Field && runtimeType == other.runtimeType && name == other.name;

  @override
  String toString() {
    return 'Field{type: $type, name: $name, isLate: $isLate, nullable: $nullable}';
  }

  @override
  int get hashCode => name.hashCode;
}

class ListField extends Field {
  String subtype;

  ListField(String type, this.subtype, String name, bool isLate, bool nullable)
      : super(type, name, name, isLate, nullable);
}

// Dart file template
const jsonAnnotation = "import 'package:json_annotation/json_annotation.dart'";
const dartFileTpl = """%s

part '%s.g.dart';

%s
""";
const tpl = """@JsonSerializable(explicitToJson: true)
class %s {
  %s

%s
  factory %s.fromJson(Map<String, dynamic> json) => _\$%sFromJson(json);

  Map<String, dynamic> toJson() => _\$%sToJson(this);
}

""";

const topListTpl =
    """List<%s> %sListFormJson(List json) =>
    json.map((e) => %s.fromJson(e as Map<String, dynamic>)).toList();

List<Map<String, dynamic>> %sListToJson(List<%s> instance) =>
    instance.map((e) => e.toJson()).toList();""";

Future<void> main(List<String> args) async {
  String? src;
  String? dist;
  String? tag;
  bool nullable = false;
  bool clean = false;
  bool once = true;
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
    'once',
    defaultsTo: "true",
    callback: (v) => once = (v != 'false'),
    help: "Automatically rename the JSON file to start with '_' after build",
  );
  parser.addOption(
    'tag',
    defaultsTo: '\$',
    callback: (v) => tag = v,
    help: "Specify the tag ",
  );

  parser.addFlag('nullable', callback: (v) => nullable = v);
  parser.addFlag('clean', callback: (v) => clean = v);

  parser.parse(args);
  // return;
  if (clean) {
    br.run(['clean']);
  } else {
    var files = <String>[];
    final isGenerated = generateModelClass(src!, dist!, tag!,
        nullable: nullable, once: once, onGenerate: (f) { files = f;});
    if (isGenerated) {
      await br.run(['build', '--delete-conflicting-outputs']);
      final all = files.map((e) => path.join(path.dirname(e), '*'));
      Process.run('git', [
        'add',
        ...all
      ]).then((ProcessResult result) {
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

bool generateModelClass(String srcDir, String distDir, String tag,
    {required bool nullable,
    required bool once,
    Function(List<String> allGeneratedFiles)? onGenerate}) {
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
      final className = fileName.underlineToHumpNaming(true);

      var classes = List<Class>.empty(growable: true);
      if (json is List) {
        handleList(classes, className, json);
      } else if (json is Map<String, dynamic>) {
        handleClass(classes, className, json);
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

      // Insert the imports at the head of dart file.
      var _import = importSet.join(";\r\n");
      _import += _import.isEmpty ? "" : ";";

      final classesStr = StringBuffer();
      final topClassIndex = classes.indexWhere((c) => c.name == className);
      final topClass = classes[topClassIndex];
      classes
        ..removeAt(topClassIndex)
        ..insert(0, topClass);

      classes.forEach((c) {
        final constructor = StringBuffer();
        constructor.write("${c.name}(\n      {");
        final fieldsStr = StringBuffer();
        var i = 0;
        c.fields.forEach((f) {
          if (f.nullable && f.type != "dynamic") {
            f.type = f.type + "?";
          }
          final required = f.nullable ? "" : "required ";
          final pad = i == 0 ? "" : "      ";
          final constructorField = "${pad}${required}this.${f.name},\n";

          String? defaultValue = null;
          if (f.type == "String") {
            defaultValue = "\"\"";
          } else if (f.type == "int") {
            defaultValue = "0";
          } else if (f.type == "double") {
            defaultValue = "0.0";
          } else if (f.type.startsWith("List<")) {
            defaultValue = "[]";
          } else if (f.type == "bool") {
            defaultValue = "false";
          }
          final defaultValueStr =
              defaultValue != null ? ", defaultValue: ${defaultValue}" : "";

          constructor.write(constructorField);
          // final late = f.nullable ? "" : "late ";
          fieldsStr
              .write("  @JsonKey(name: \"${f.rawName}\"$defaultValueStr)\n");
          fieldsStr.write("  ${f.type} ${f.name};\n\n");
          i++;
        });
        var constructorStr = constructor.toString();
        constructorStr =
            constructorStr.substring(0, constructorStr.length - 2) + "});";
        classesStr.write(replaceTemplate(tpl, [
          c.name,
          constructorStr,
          fieldsStr.toString(),
          c.name,
          c.name,
          c.name,
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

      final body = topListFunction.isNotEmpty
          ? topListFunction + "\n\n" + classesStr.toString()
          : classesStr.toString();
      final dist = (replaceTemplate(dartFileTpl,
          [_import, path.basenameWithoutExtension(dartFilePath), body]));
      File(dartFilePath)
        ..createSync(recursive: true)
        ..writeAsStringSync(dist);

      var sourceFilePath = file.path;
      if (once) {
        final newName = "_" + path.basename(file.path);
        sourceFilePath = path.join(file.parent.path, newName);
        file.renameSync(sourceFilePath);
      }

      allGeneratedFiles.add(dartFilePath);

      Process.run('git', [
        'add',
        sourceFilePath
      ]).then((ProcessResult result) {
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

Class handleClass(List<Class> classes, String name, Map<String, dynamic> json) {
  final fields = List<Field>.empty(growable: true);
  json.forEach((key, v) {
    fields.add(handleValue(classes, key, v));
    fields.forEach((f) {
      if (f.type == "Null") {
        f.nullable = true;
      }
    });
  });
  final class1 = Class(name, name, fields);
  classes.add(class1);
  return class1;
}

Field handleValue(List<Class> classes, String name, v) {
  final type = getFieldType(v, classes, name);
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

dynamic getFieldType(v, List<Class> classes, String name) {
  String type;
  Class? childClass = null;
  if (v is Map<String, dynamic>) {
    childClass = handleClass(classes, name, v);
    type = childClass.name;
  } else if (v is List) {
    final field = handleList(classes, name, v);
    type = field.type;
  } else {
    type = getType(v);
  }
  return childClass ?? type;
}

Field handleList(List<Class> classes, String name, List list) {
  final types = List.empty(growable: true);
  list.forEach((v) {
    final type = getFieldType(v, classes, name);
    types.add(type);
  });

  if (types.isEmpty) return Field("List", name, name, true, false);
  bool isSingleType = getIsSingleType(types);
  if (!isSingleType) {
    return Field("List", name, name, true, false);
  } else if (types.first is Class) {
    Class class0 = types.first as Class;
    handleFieldsAreNullable(types, class0);
    handleNullableFieldType(types, class0);
    classes.add(class0);
    return ListField("List<${class0.name}>", class0.name, name, true, false);
  } else {
    //String or int ...
    return Field("List<${types.first}>", name, name, true, false);
  }
}

bool getIsSingleType(List<dynamic> types) {
  bool isSingleType = true;
  var lastType = null;
  for (final type in types) {
    if (type != lastType && lastType != null) {
      isSingleType = false;
      break;
    }
    lastType = type;
  }
  return isSingleType;
}

void handleFieldsAreNullable(List<dynamic> types, Class class0) {
  Class? lastClass = null;
  for (final class1 in types) {
    if (lastClass != null) {
      class1 as Class;
      for (final field in class1.fields) {
        if (field.type == "Null" || field.nullable) {
          final class0Field =
              class0.fields.firstWhereOrNull((e) => e.name == field.name);
          class0Field
            ?..nullable = true
            ..type = "Null";
        }
      }
    }
    lastClass = class1 as Class;
  }
}

void handleNullableFieldType(List<dynamic> types, Class class0) {
  final nullables = class0.fields.where((e) => e.type == "Null");
  nullables.forEach((nullable) {
    String? type;
    for (final class2 in types) {
      class2 as Class;
      type = class2.fields
          .firstWhereOrNull((e) => e.name == nullable.name && e.type != "Null")
          ?.type;
      if (type != null) break;
    }
    type ??= "dynamic";
    nullable.nullable = true;
    nullable.type = type;
  });
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

String changeFirstChar(String str, [bool upper = true]) {
  return (upper ? str[0].toUpperCase() : str[0].toLowerCase()) +
      str.substring(1);
}

bool isBuiltInType(String type) {
  return ['int', 'num', 'string', 'double', 'map', 'list'].contains(type);
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
