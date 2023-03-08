
Language: [English](README.md) | [中文简体](README_zh-CN.md)


# json5_model

A one-line command to convert a JSON file into a Dart model class.  

json_model Improved version, supports parsing nested JSON, supports json5 files, and fixes some bugs, does not support the original version of json file @meta function


## Install

```yaml
dev_dependencies:
  json_serializable: ^6.5.4
  json5_model:
    git:
      url: https://github.com/wilinz/json5_model.git
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

