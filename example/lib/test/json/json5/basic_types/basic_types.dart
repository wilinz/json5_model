import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:autoequal/autoequal.dart';

part 'basic_types.g.dart';

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class BasicTypes with EquatableMixin {

  BasicTypes(
      {required this.intX,
      required this.doubleX,
      required this.string,
      required this.boolX,
      this.nullValue,
      required this.list,
      required this.datetime});

  @JsonKey(name: "int", defaultValue: 0)
  final int intX;

  @JsonKey(name: "double", defaultValue: 0.0)
  final double doubleX;

  @JsonKey(name: "string", defaultValue: "")
  final String string;

  @JsonKey(name: "bool", defaultValue: false)
  final bool boolX;

  @JsonKey(name: "null_value")
  final dynamic nullValue;

  @JsonKey(name: "list", defaultValue: [])
  final List<int> list;

  @JsonKey(name: "datetime", defaultValue: "")
  final String datetime;


  factory BasicTypes.fromJson(Map<String, dynamic> json) => _$BasicTypesFromJson(json);
  
  Map<String, dynamic> toJson() => _$BasicTypesToJson(this);
  
  factory BasicTypes.emptyInstance() => BasicTypes(intX: 0, doubleX: 0, string: "", boolX: false, list: [], datetime: "");
  
  @override
  List<Object?> get props => _$props;
}


