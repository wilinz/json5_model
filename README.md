
Language: [English](README.md) | [中文简体](README_zh-CN.md)


# json5_model

A one-line command to convert a JSON file into a Dart model class.  

json_model Improved version, supports parsing nested JSON, supports json5 files, and fixes some bugs, does not support the original version of json file @meta function


## Install

```yaml
dev_dependencies:
  json_serializable: ^6.5.4
  json5_model: ^1.0.1
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

Rename the JSON file to the beginning of the underscore to ignore this file, so that the JSON file will be skipped when re-executing the auto-generation, e.g. 'response.json' to '_response.json'

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

part 'github.g.dart';

@JsonSerializable(explicitToJson: true)
class Github {
  Github(
      {required this.id,
      required this.nodeId,
      required this.owner,
      required this.private,
      required this.topics,
      required this.permissions,
      required this.securityAndAnalysis});

  @JsonKey(name: "id", defaultValue: 0)
  int id;
  @JsonKey(name: "node_id", defaultValue: "")
  String nodeId;
  @JsonKey(name: "owner")
  Owner owner;
  @JsonKey(name: "private", defaultValue: false)
  bool private;
  @JsonKey(name: "topics", defaultValue: [])
  List<String> topics;
  @JsonKey(name: "permissions")
  Permissions permissions;
  @JsonKey(name: "security_and_analysis")
  SecurityAndAnalysis securityAndAnalysis;

  factory Github.fromJson(Map<String, dynamic> json) => _$GithubFromJson(json);

  Map<String, dynamic> toJson() => _$GithubToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Owner {
  Owner(
      {required this.login});

  @JsonKey(name: "login", defaultValue: "")
  String login;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Permissions {
  Permissions(
      {required this.admin,
      required this.push,
      required this.pull});

  @JsonKey(name: "admin", defaultValue: false)
  bool admin;
  @JsonKey(name: "push", defaultValue: false)
  bool push;
  @JsonKey(name: "pull", defaultValue: false)
  bool pull;

  factory Permissions.fromJson(Map<String, dynamic> json) => _$PermissionsFromJson(json);

  Map<String, dynamic> toJson() => _$PermissionsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdvancedSecurity {
  AdvancedSecurity(
      {required this.status});

  @JsonKey(name: "status", defaultValue: "")
  String status;

  factory AdvancedSecurity.fromJson(Map<String, dynamic> json) => _$AdvancedSecurityFromJson(json);

  Map<String, dynamic> toJson() => _$AdvancedSecurityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SecretScanning {
  SecretScanning(
      {required this.status});

  @JsonKey(name: "status", defaultValue: "")
  String status;

  factory SecretScanning.fromJson(Map<String, dynamic> json) => _$SecretScanningFromJson(json);

  Map<String, dynamic> toJson() => _$SecretScanningToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SecretScanningPushProtection {
  SecretScanningPushProtection(
      {required this.status});

  @JsonKey(name: "status", defaultValue: "")
  String status;

  factory SecretScanningPushProtection.fromJson(Map<String, dynamic> json) => _$SecretScanningPushProtectionFromJson(json);

  Map<String, dynamic> toJson() => _$SecretScanningPushProtectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SecurityAndAnalysis {
  SecurityAndAnalysis(
      {required this.advancedSecurity,
      required this.secretScanning,
      required this.secretScanningPushProtection});

  @JsonKey(name: "advanced_security")
  AdvancedSecurity advancedSecurity;
  @JsonKey(name: "secret_scanning")
  SecretScanning secretScanning;
  @JsonKey(name: "secret_scanning_push_protection")
  SecretScanningPushProtection secretScanningPushProtection;

  factory SecurityAndAnalysis.fromJson(Map<String, dynamic> json) => _$SecurityAndAnalysisFromJson(json);

  Map<String, dynamic> toJson() => _$SecurityAndAnalysisToJson(this);
}

```