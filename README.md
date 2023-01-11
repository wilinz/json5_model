
语言: [English](README.md) | [中文简体](README-ZH.md)


# json5_model

# json_model 改进版，支持解析嵌套json,支持json5文件，并修复了一些Bug，暂时不支持原版本的json文件@meta功能
一行命令，将Json文件转为Dart model类。

## 安装

```yaml
dev_dependencies: 
  json_serializable: ^5.0.0
  json5_model:
    git:
      url: https://github.com/wilinz/json5_model.git
```

## 使用

1. 在工程根目录下创建一个名为 "jsons" 的目录;
2. 创建或拷贝Json文件到"jsons" 目录中 ;
3. 运行 `pub run json5_model` (Dart VM工程)or `flutter packages pub run json5_model`(Flutter中) 命令生成Dart model类，生成的文件默认在"lib/models"目录下

## 思想

大多数开发者可能都是通过UI工具来将Json文件来生成Dart model类。这会有一个小问题，一旦生成Dart model类后，原始的json数据是不会维护的，但现实开发中偶尔会有查看原始Json数据的需求。json_model的主要思路就是项目中**只维护json文件，而不用去关注生成的dart文件，只要json文件在，随时都可以通过一句命令生成dart类**。

json_model还有一个优势是在多人协作的项目中，可以集成到构建流程中，无需每个人都去安装一个转换工具。

当然，这只是一个小差异，如果你更喜欢UI工具的方式，按照自己喜欢的方式来就行。

> 关于 `@JsonKey`标注的详细内容请参考[json_annotation](https://pub.dev/packages/json_annotation) 包；

> `ignore` 配置在“需要手动修改自动生成的代码”的场景下非常实用。比如在首次生成之后dart文件后，如果我们需要添加一些逻辑，比如给model类添加了一个方法，如果后续再运行自动生成命令，则我们修改的类会被重新生成的代码覆盖掉，解决这个问题的方式就是修改后将ignore置为true，这样重新执行自动生成时会跳过该json文件。目前此修改版本不支持`ignore` 配置，但可以重命名json文件为下划线开头以忽略此文件，这样重新执行自动生成时会跳过该json文件，如`response.json`重命名为`_response.json`  

##  全局命令参数

默认的源json文件目录为根目录下名为 "jsons" 的目录；可以通过 `src` 参数自定义源json文件目录，例如:

```shell
flutter pub run json5_model --src=jsons1
```

默认的生成目录为"lib/models"，同样也可以通过`dist` 参数来自定义输出目录:

```shell
flutter pub run json5_model --src=jsons1 --dist=lib/test/test1
```

## 代码调用

如果您正在开发一个工具，想在代码中使用json_model，此时便不能通过命令行来调用json_model，这是你可以通过代码调用：

```dart
import 'package:json_model/json5_model.dart';
void main() {
  run(['src=jsons']);  //run方法为json_model暴露的方法；
}
```

