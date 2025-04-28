import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:autoequal/autoequal.dart';

part 'mixed_types.g.dart';

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class MixedTypes with EquatableMixin {

  MixedTypes(
      {required this.data});

  @JsonKey(name: "data", defaultValue: [])
  final List<int?> data;


  factory MixedTypes.fromJson(Map<String, dynamic> json) => _$MixedTypesFromJson(json);
  
  Map<String, dynamic> toJson() => _$MixedTypesToJson(this);
  
  factory MixedTypes.emptyInstance() => MixedTypes(data: []);
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Data with EquatableMixin {

  Data(
      {required this.value});

  @JsonKey(name: "value", defaultValue: 0.0)
  final double value;


  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  
  Map<String, dynamic> toJson() => _$DataToJson(this);
  
  factory Data.emptyInstance() => Data(value: 0);
  
  @override
  List<Object?> get props => _$props;
}


