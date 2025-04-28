
语言: [English](README.md) | [中文简体](README-ZH.md)


# json5_model

一行命令，将Json文件转为Dart model类。  

json_model 改进版，支持解析嵌套json,支持json5文件，并修复了一些Bug，不支持原版本的json文件@meta功能


## 安装

```yaml
dependencies:
  json_annotation: ^4.9.0
  copy_with_extension: ^6.0.1
  equatable: ^2.0.7
  autoequal: ^0.9.1

dev_dependencies:
  json5_model: ^3.0.1
  json_serializable: ^6.9.5
  autoequal_gen: ^0.9.5
  copy_with_extension_gen: ^6.0.1
```

## 使用

1. 在工程根目录下创建一个名为 "jsons" 的目录;
2. 创建或拷贝Json文件到"jsons" 目录中 ;
3. 运行 `dart pub run json5_model` (Dart VM工程)or `flutter pub run json5_model`(Flutter中) 命令生成Dart model类，生成的文件默认在"lib/models"目录下

## 思想

大多数开发者可能都是通过UI工具来将Json文件来生成Dart model类。这会有一个小问题，一旦生成Dart model类后，原始的json数据是不会维护的，但现实开发中偶尔会有查看原始Json数据的需求。json_model的主要思路就是项目中**只维护json文件，而不用去关注生成的dart文件，只要json文件在，随时都可以通过一句命令生成dart类**。

json5_model 还有一个优势是在多人协作的项目中，可以集成到构建流程中，无需每个人都去安装一个转换工具。

当然，这只是一个小差异，如果你更喜欢UI工具的方式，按照自己喜欢的方式来就行。

> 关于 `@JsonKey`标注的详细内容请参考[json_annotation](https://pub.dev/packages/json_annotation) 包；

## 避免覆盖

此程序大于 2.0.0 的版本会在转换成功后自动重命名json文件为 '_' 开头以忽略此文件，这样重新执行自动生成时会跳过该json文件，如`response.json`重命名为`_response.json`, 如果你不想自动重命名，请添加 --once=false 参数

##  全局命令参数

默认的源json文件目录为根目录下名为 "jsons" 的目录；可以通过 `src` 参数自定义源json文件目录，例如:

```shell
flutter pub run json5_model --src=lib/data/json
```

默认的生成目录为"lib/models"，同样也可以通过`dist` 参数来自定义输出目录:

```shell
flutter pub run json5_model --src=lib/data/json --dist=lib/data/model
```


## 代码调用

如果您正在开发一个工具，想在代码中使用json_model，此时便不能通过命令行来调用json_model，这是你可以通过代码调用：

```dart
import 'package:json_model/json5_model.dart';
void main() {
  run(['src=jsons']);  //run方法为json_model暴露的方法；
}
```

示例:
```shell
flutter pub run json5_model --src=lib/data/json
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
class Github with EquatableMixin {

  Github(
      {required this.id,
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

  factory Github.emptyInstance() => Github(id: 0, nodeId: "", owner: Owner.emptyInstance(), private: false, topics: [], permissions: Permissions.emptyInstance(), securityAndAnalysis: SecurityAndAnalysis.emptyInstance());

  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Owner with EquatableMixin {

  Owner(
      {required this.login});

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
class Permissions with EquatableMixin {

  Permissions(
      {required this.admin,
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
class AdvancedSecurity with EquatableMixin {

  AdvancedSecurity(
      {required this.status});

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
class SecretScanning with EquatableMixin {

  SecretScanning(
      {required this.status});

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
class SecretScanningPushProtection with EquatableMixin {

  SecretScanningPushProtection(
      {required this.status});

  @JsonKey(name: "status", defaultValue: "")
  final String status;


  factory SecretScanningPushProtection.fromJson(Map<String, dynamic> json) => _$SecretScanningPushProtectionFromJson(json);

  Map<String, dynamic> toJson() => _$SecretScanningPushProtectionToJson(this);

  factory SecretScanningPushProtection.emptyInstance() => SecretScanningPushProtection(status: "");

  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class SecurityAndAnalysis with EquatableMixin {

  SecurityAndAnalysis(
      {required this.advancedSecurity,
        required this.secretScanning,
        required this.secretScanningPushProtection});

  @JsonKey(name: "advanced_security", defaultValue: AdvancedSecurity.emptyInstance)
  final AdvancedSecurity advancedSecurity;

  @JsonKey(name: "secret_scanning", defaultValue: SecretScanning.emptyInstance)
  final SecretScanning secretScanning;

  @JsonKey(name: "secret_scanning_push_protection", defaultValue: SecretScanningPushProtection.emptyInstance)
  final SecretScanningPushProtection secretScanningPushProtection;


  factory SecurityAndAnalysis.fromJson(Map<String, dynamic> json) => _$SecurityAndAnalysisFromJson(json);

  Map<String, dynamic> toJson() => _$SecurityAndAnalysisToJson(this);

  factory SecurityAndAnalysis.emptyInstance() => SecurityAndAnalysis(advancedSecurity: AdvancedSecurity.emptyInstance(), secretScanning: SecretScanning.emptyInstance(), secretScanningPushProtection: SecretScanningPushProtection.emptyInstance());

  @override
  List<Object?> get props => _$props;
}
```