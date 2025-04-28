
Language: [English](README.md) | [中文简体](README_zh-CN.md)


# json5_model

A one-line command to convert a JSON file into a Dart model class.  

json_model Improved version, supports parsing nested JSON, supports json5 files, and fixes some bugs, does not support the original version of json file @meta function


## Install

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

## Usage

1. Create a directory named "jsons" under the project root;
2. Create or copy a JSON file into the "jsons" directory;
3. Run the 'pub run json5_model' (Dart VM project) or 'flutter packages pub run json5_model' (in Flutter) command to generate the Dart model class, and the generated files are in the "libmodels" directory by default
## Thought

Most developers probably use UI tools to generate Dart model classes from JSON files. There is a small problem with this, once the Dart model class is generated, the raw JSON data will not be maintained, but there will be an occasional need to view the original JSON data in real development. The main idea of json_model is that the project only maintains the JSON file, without paying attention to the generated DART file, as long as the JSON file is there, you can generate the DART class at any time through a command.

Another advantage of json5_model is that in projects where multiple people collaborate, they can be integrated into the build process without everyone having to install a conversion tool.

Of course, this is just a small difference, if you prefer the way the UI tools do, just do it the way you like.

> For details of the '@JsonKey' annotation, please refer to the [json_annotation](https:pub.devpackagesjson_annotation) package;

## Avoid Overwriting

The version of this program greater than 2.0.0 will automatically rename the json file to start with '_' after successful conversion to ignore this file, so that the json file will be skipped when re-executing the automatic generation, such as 'response.json' renamed to '_response.json', if you don't want to rename automatically, please add the --once=false parameter

##  Global command parameters

The default source json file directory is a directory named "jsons" in the root directory; You can customize the source json file directory with the 'src' parameter, for example:

```shell
flutter pub run json5_model --src=lib/data/json
```

The default build directory is "libmodels", and you can also customize the output directory with the 'dist' parameter:

```shell
flutter pub run json5_model --src=lib/data/json --dist=lib/data/model
```

## code call

If you are developing a tool and want to use the JSON Model in your code, you cannot call the JSON Model from the command line, you can call it from code:

```dart
import 'package:json_model/json5_model.dart';
void main() {
  run(['src=jsons']);  //The run method is the method exposed by the json5_model；
}
```

Example:
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