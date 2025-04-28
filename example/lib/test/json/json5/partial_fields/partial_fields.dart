import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:autoequal/autoequal.dart';

part 'partial_fields.g.dart';

List<PartialFields> partialFieldsListFormJson(List json) =>
    json.map((e) => PartialFields.fromJson(e as Map<String, dynamic>)).toList();

List<Map<String, dynamic>> partialFieldsListToJson(List<PartialFields> instance) =>
    instance.map((e) => e.toJson()).toList();

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class PartialFields with EquatableMixin {

  PartialFields(
      {required this.id,
      required this.name,
      required this.email});

  @JsonKey(name: "id", defaultValue: 0)
  final int id;

  @JsonKey(name: "name", defaultValue: "")
  final String name;

  @JsonKey(name: "email", defaultValue: "")
  final String email;


  factory PartialFields.fromJson(Map<String, dynamic> json) => _$PartialFieldsFromJson(json);
  
  Map<String, dynamic> toJson() => _$PartialFieldsToJson(this);
  
  factory PartialFields.emptyInstance() => PartialFields(id: 0, name: "", email: "");
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class PartialFieldsItem with EquatableMixin {

  PartialFieldsItem(
      {required this.id,
      required this.name,
      this.email,
      this.phone});

  @JsonKey(name: "id", defaultValue: 0)
  final int id;

  @JsonKey(name: "name", defaultValue: "")
  final String name;

  @JsonKey(name: "email")
  final String? email;

  @JsonKey(name: "phone")
  final String? phone;


  factory PartialFieldsItem.fromJson(Map<String, dynamic> json) => _$PartialFieldsItemFromJson(json);
  
  Map<String, dynamic> toJson() => _$PartialFieldsItemToJson(this);
  
  factory PartialFieldsItem.emptyInstance() => PartialFieldsItem(id: 0, name: "");
  
  @override
  List<Object?> get props => _$props;
}


