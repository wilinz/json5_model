Language: [English](README.md) | [简体中文](README-ZH.md)

# json5_model

Convert JSON files to Dart model classes with a single command  

An improved version of json_model that supports nested JSON parsing, JSON5 files, and fixes several bugs. Note: The original @meta functionality from json_model is not supported.

## Installation

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
  build_runner: ^2.4.15
```

## Usage

1. Create a directory named "jsons" in your project root
2. Create or copy JSON files into the "jsons" directory
3. Run `dart pub run json5_model` (for Dart VM projects) or `flutter pub run json5_model` (for Flutter projects) to generate Dart model classes. Generated files will be placed in "lib/models" by default

## New Features

### File Restoration Command
Use the `--restore` parameter to restore all renamed JSON files:
```shell
flutter pub run json5_model --restore
```

### Keep Source Files
Add the `--keepsource` parameter to prevent automatic renaming of JSON files:
```shell
flutter pub run json5_model --keepsource
```

## Global Command Parameters

| Parameter      | Description                                                      | Default Value |
|----------------|------------------------------------------------------------------|---------------|
| `--src`        | Specify JSON source directory                                    | ./jsons       |
| `--dist`       | Specify output directory                                         | lib/models    |
| `--nocopywith` | Disable copyWith method generation                               | false         |
| `--noautoequal`| Disable equality comparison generation                           | false         |
| `--keepsource` | Keep original JSON files (don't add _ prefix) after generation   | false         |
| `--restore`    | Restore all renamed JSON files                                   | false         |
| `--clean`      | Clean generated files                                            | false         |

Examples:
```shell
# Custom paths
flutter pub run json5_model --src=lib/data/json --dist=lib/data/model

# Keep source files
flutter pub run json5_model --keepsource

# Restore files
flutter pub run json5_model --restore
```

## How It Works

1. **Smart Type Inference**  
   Automatically detects and merges these type characteristics:
    - Numeric type promotion (int → double)
    - Handles nested objects and lists
    - Automatic null safety handling
    - Merges fields from multiple JSON structures

2. **File Management**
    - By default adds "_" prefix to source JSON files after generation (can be disabled with `--keepsource`)
    - Use `--restore` to batch restore renamed files

3. **Advanced Features**
   ```dart
   // Auto-generated extension methods
   List<Github> githubListFormJson(List json) => ... 
   
   // Empty object construction
   factory Github.emptyInstance() => Github(...);
   
   // Deep copy support
   Github newObj = oldObj.copyWith(id: 123);
   ```

## Example JSON → Dart Conversion

Input JSON:
```json5
{
  "scores": [90, 85.5, null],
  "users": [
    {"name": "Alice", "age": 25},
    {"name": "Bob", "height": 175.5}
  ]
}
```

Generated Dart snippet:
```dart
// Automatic numeric type and nullable handling
List<double?> scores;

// Merges Map fields from different structures
class UsersItem {
  String? name;
  int? age;
  double? height;
  
  factory UsersItem.fromJson(Map<String, dynamic> json) => ...
}
```

## Best Practices

1. **Version Control**  
   Recommend including original JSON files in version control (with proper data sanitization)

2. **CI Integration**  
   Add generation command to your CI pipeline:
   ```yaml
   # GitHub Actions example
   - name: Generate models
     run: flutter pub run json5_model
   ```

3. **Mixed Type Handling**  
   When encountering incompatible types:
   ```dart
   // Automatically falls back to dynamic type
   List<dynamic> complexList;
   ```

4. **Custom Configuration**  
   Combine parameters for customized generation:
   ```shell
   # Disable autoequal and copywith generation
   flutter pub run json5_model --noautoequal --nocopywith
   ```

## Example:
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