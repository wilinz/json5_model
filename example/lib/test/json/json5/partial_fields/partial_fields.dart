import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:autoequal/autoequal.dart';

part 'partial_fields.g.dart';

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class PartialFields with EquatableMixin {

  PartialFields(
      {required this.a,
      required this.b,
      required this.c,
      required this.d,
      required this.f});

  @JsonKey(name: "a", defaultValue: [])
  final List<AItem> a;

  @JsonKey(name: "b", defaultValue: [])
  final List<String?> b;

  @JsonKey(name: "c", defaultValue: [])
  final List<double?> c;

  @JsonKey(name: "d", defaultValue: [])
  final List<int?> d;

  @JsonKey(name: "f", defaultValue: [])
  final List<int> f;


  factory PartialFields.fromJson(Map<String, dynamic> json) => _$PartialFieldsFromJson(json);
  
  Map<String, dynamic> toJson() => _$PartialFieldsToJson(this);
  
  factory PartialFields.emptyInstance() => PartialFields(a: [], b: [], c: [], d: [], f: []);
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class AItem with EquatableMixin {

  AItem(
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


  factory AItem.fromJson(Map<String, dynamic> json) => _$AItemFromJson(json);
  
  Map<String, dynamic> toJson() => _$AItemToJson(this);
  
  factory AItem.emptyInstance() => AItem(id: 0, name: "");
  
  @override
  List<Object?> get props => _$props;
}


