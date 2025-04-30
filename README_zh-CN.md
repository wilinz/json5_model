语言: [English](README.md) | [中文简体](README-ZH.md)

# json5_model

一行命令，将Json文件转为Dart model类

json_model 改进版，支持解析嵌套json，支持json5文件，并修复了一些Bug，不支持原版本的json文件@meta功能

## 安装

Unix bash:

```shell
dart pub add \
json_annotation copy_with_extension equatable equatable_annotations \
dev:json5_model dev:json_serializable dev:copy_with_extension_gen dev:equatable_gen dev:build_runner
```

Windows Powershell:

```shell
dart pub add |
json_annotation copy_with_extension equatable equatable_annotations |
dev:json5_model dev:json_serializable dev:copy_with_extension_gen dev:equatable_gen dev:build_runner
```

---

## 5.0.0 以上版本默认使用 `equatable_gen` 替换 `autoequal`，迁移方法如下

下面有快捷的方式将旧代码迁移到 `equatable_gen`，  
使用 `--dist` 参数指定 Dart 模型源码的目录，迁移之前将会自动备份。您可以使用 `--migr-autoequal-back <backup_dir>` 参数指定备份文件存放的目录。如果未指定，则默认备份目录为 `./migr_autoequal_back`。

```shell
dart pub run json5_model --dist=lib/data/model --migr-autoequal
```

您也可以手动迁移，替换以下内容：
1. `@Autoequal()` => `@generateProps`
2. `@autoequal`  =>  `@generateProps`
3. `@IgnoreAutoequal()` => `@ignore`
4. `@IncludeAutoequal()` => `@include`
5.
```dart
   import 'package:autoequal/autoequal.dart';
   ```
=>
   ```dart
   import 'package:equatable_annotations/equatable_annotations.dart';
   ```

---

## 使用

1. 在工程目录下创建一个名为 "json" 的目录
2. 创建或拷贝Json文件到"json" 目录中
3. 例子:

```shell
# 自定义路径
flutter pub run json5_model --src=lib/data/json --dist=lib/data/model

# 正则匹配获取类名前缀，下面的正则表达式会将文件名删除 _response 结尾后作为类名前缀，这样可以防止类名冲突，比如防止编写 dart package 代码时 export 的类名冲突
flutter pub run json5_model  --src=lib/data/json --dist=lib/test/json --prefix-regexp "(.+?)_response$"

# 保留源文件
flutter pub run json5_model --src=lib/data/json --dist=lib/data/model --keepsource

# 还原文件
flutter pub run json5_model --src=lib/data/json --restore
```

## 新功能

### 文件恢复命令

使用 `--restore` 参数可以恢复所有被重命名的JSON文件：

```shell
flutter pub run json5_model --restore
```

### 保留源文件

添加 `--keepsource` 参数可阻止自动重命名JSON文件：

```shell
flutter pub run json5_model --keepsource
```

## 全局命令参数

| 参数                 | 说明                                     | 默认值        |
|--------------------|----------------------------------------|------------|
| `--src`            | 指定JSON源文件目录                            | ./jsons    |
| `--dist`           | 指定输出目录                                 | lib/models |
| `--nocopywith`     | 禁用生成copyWith方法                         | false      |
| `--noautoequal`    | 禁用生成相等性比较                              | false      |
| `--keepsource`     | 生成后保留原始JSON文件（不添加_前缀）                  | false      |
| `--restore`        | 恢复所有被重命名的JSON文件                        | false      |
| `--clean`          | 清理生成的文件                                | false      |
| `--no-file-prefix` | 禁止添加类名前缀，这可能造成类名冲突                     | false      |
| `--prefix-regexp`  | 指定类名前缀正则，这会对文件名使用正则表达式获得的第一个匹配字符串为类名前缀 | (.+?)      |

## 工作机制

1. **智能类型推导**  
   自动检测并合并以下类型特征：
    - 数值类型自动升级（int → double）
    - 处理嵌套对象和列表
    - 自动处理空安全（Nullable）
    - 合并多个JSON结构中的字段

2. **文件管理**
    - 默认在生成后为源JSON文件添加"_"前缀（可通过`--keepsource`禁用）
    - 使用`--restore`可批量恢复被重命名的文件

3. **高级特性**
   ```dart
   // 自动生成的扩展方法
   List<Github> githubListFormJson(List json) => ... 
   
   // 空对象构造
   factory Github.emptyInstance() => Github(...);
   
   // 深度拷贝支持
   Github newObj = oldObj.copyWith(id: 123);
   ```

## 示例JSON → Dart转换

输入JSON：

```json5
{
  "scores": [
    90,
    85.5,
    null
  ],
  "users": [
    {
      "name": "Alice",
      "age": 25
    },
    {
      "name": "Bob",
      "height": 175.5
    }
  ]
}
```

生成Dart代码片段：

```dart
// 自动处理数值类型和可空
List<double?> scores;

// 合并不同结构的Map字段
class UsersItem {
  String? name;
  int? age;
  double? height;

  factory UsersItem.fromJson(Map<String, dynamic> json) =>

  ...
}
```

## 最佳实践

1. **版本控制**  
   建议将原始JSON文件纳入版本控制，做好脱敏处理

2. **持续集成**  
   在CI流程中加入生成命令：
   ```yaml
   # GitHub Actions示例
   - name: Generate models
     run: flutter pub run json5_model
   ```

3. **混合类型处理**  
   当遇到无法合并的类型时：
   ```dart
   // 自动降级为dynamic类型
   List<dynamic> complexList;
   ```

4. **自定义配置**  
   通过组合参数实现定制化生成：
   ```shell
   # 不生成 autoequal，copywith
   flutter pub run json5_model --noautoequal --nocopywith
   ```

## Example:

```shell
flutter pub run json5_model --src=lib/data/json --dist=lib/data/model
```

json:

```json5
{
  "id": 1296269,
  "node_id": "MDEwOlJlcG9zaXRvcnkxMjk2MjY5",
  "owner": {
    "login": "octocat",
  },
  "private": false,
  "topics": [
    "octocat",
    "atom",
    "electron",
    "api"
  ],
  "permissions": {
    "admin": false,
    "push": false,
    "pull": true
  },
  "security_and_analysis": {
    "advanced_security": {
      "status": "enabled"
    },
    "secret_scanning": {
      "status": "enabled"
    },
    "secret_scanning_push_protection": {
      "status": "disabled"
    }
  }
}
```

Dart:

```dart
import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:autoequal/autoequal.dart';

part 'github.g.dart';

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Github
    with EquatableMixin {

  Github({required this.id,
    required this.nodeId,
    required this.owner,
    required this.private,
    required this.topics,
    required this.permissions,
    required this.securityAndAnalysis});

  @JsonKey(name: "id", defaultValue: 0)
  final int id;

  @JsonKey(name: "node_id", defaultValue: "")
  final String nodeId;

  @JsonKey(name: "owner", defaultValue: Owner.emptyInstance)
  final Owner owner;

  @JsonKey(name: "private", defaultValue: false)
  final bool private;

  @JsonKey(name: "topics", defaultValue: [])
  final List<String> topics;

  @JsonKey(name: "permissions", defaultValue: Permissions.emptyInstance)
  final Permissions permissions;

  @JsonKey(name: "security_and_analysis", defaultValue: SecurityAndAnalysis.emptyInstance)
  final SecurityAndAnalysis securityAndAnalysis;


  factory Github.fromJson(Map<String, dynamic> json) => _$GithubFromJson(json);

  Map<String, dynamic> toJson() => _$GithubToJson(this);

  factory Github.emptyInstance() =>
      Github(id: 0,
          nodeId: "",
          owner: Owner.emptyInstance(),
          private: false,
          topics: [],
          permissions: Permissions.emptyInstance(),
          securityAndAnalysis: SecurityAndAnalysis.emptyInstance());

  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Owner
    with EquatableMixin {

  Owner({required this.login});

  @JsonKey(name: "login", defaultValue: "")
  final String login;


  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);

  factory Owner.emptyInstance() => Owner(login: "");

  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Permissions
    with EquatableMixin {

  Permissions({required this.admin,
    required this.push,
    required this.pull});

  @JsonKey(name: "admin", defaultValue: false)
  final bool admin;

  @JsonKey(name: "push", defaultValue: false)
  final bool push;

  @JsonKey(name: "pull", defaultValue: false)
  final bool pull;


  factory Permissions.fromJson(Map<String, dynamic> json) => _$PermissionsFromJson(json);

  Map<String, dynamic> toJson() => _$PermissionsToJson(this);

  factory Permissions.emptyInstance() => Permissions(admin: false, push: false, pull: false);

  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class AdvancedSecurity
    with EquatableMixin {

  AdvancedSecurity({required this.status});

  @JsonKey(name: "status", defaultValue: "")
  final String status;


  factory AdvancedSecurity.fromJson(Map<String, dynamic> json) => _$AdvancedSecurityFromJson(json);

  Map<String, dynamic> toJson() => _$AdvancedSecurityToJson(this);

  factory AdvancedSecurity.emptyInstance() => AdvancedSecurity(status: "");

  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class SecretScanning
    with EquatableMixin {

  SecretScanning({required this.status});

  @JsonKey(name: "status", defaultValue: "")
  final String status;


  factory SecretScanning.fromJson(Map<String, dynamic> json) => _$SecretScanningFromJson(json);

  Map<String, dynamic> toJson() => _$SecretScanningToJson(this);

  factory SecretScanning.emptyInstance() => SecretScanning(status: "");

  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class SecretScanningPushProtection
    with EquatableMixin {

  SecretScanningPushProtection({required this.status});

  @JsonKey(name: "status", defaultValue: "")
  final String status;


  factory SecretScanningPushProtection.fromJson(Map<String, dynamic> json) =>
      _$SecretScanningPushProtectionFromJson(json);

  Map<String, dynamic> toJson() => _$SecretScanningPushProtectionToJson(this);

  factory SecretScanningPushProtection.emptyInstance() => SecretScanningPushProtection(status: "");

  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class SecurityAndAnalysis
    with EquatableMixin {

  SecurityAndAnalysis({required this.advancedSecurity,
    required this.secretScanning,
    required this.secretScanningPushProtection});

  @JsonKey(name: "advanced_security", defaultValue: AdvancedSecurity.emptyInstance)
  final AdvancedSecurity advancedSecurity;

  @JsonKey(name: "secret_scanning", defaultValue: SecretScanning.emptyInstance)
  final SecretScanning secretScanning;

  @JsonKey(name: "secret_scanning_push_protection",
      defaultValue: SecretScanningPushProtection.emptyInstance)
  final SecretScanningPushProtection secretScanningPushProtection;


  factory SecurityAndAnalysis.fromJson(Map<String, dynamic> json) =>
      _$SecurityAndAnalysisFromJson(json);

  Map<String, dynamic> toJson() => _$SecurityAndAnalysisToJson(this);

  factory SecurityAndAnalysis.emptyInstance() =>
      SecurityAndAnalysis(advancedSecurity: AdvancedSecurity.emptyInstance(),
          secretScanning: SecretScanning.emptyInstance(),
          secretScanningPushProtection: SecretScanningPushProtection.emptyInstance());

  @override
  List<Object?> get props => _$props;
}
```