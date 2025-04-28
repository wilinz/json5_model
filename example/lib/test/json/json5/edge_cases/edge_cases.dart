import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:autoequal/autoequal.dart';

part 'edge_cases.g.dart';

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class EdgeCases with EquatableMixin {

  EdgeCases(
      {required this.emptyList,
      this.nullList,
      required this.deepNull,
      required this.polymorphic});

  @JsonKey(name: "empty_list", defaultValue: [])
  final List<dynamic> emptyList;

  @JsonKey(name: "null_list")
  final dynamic nullList;

  @JsonKey(name: "deep_null", defaultValue: DeepNull.emptyInstance)
  final DeepNull deepNull;

  @JsonKey(name: "polymorphic", defaultValue: [])
  final List<PolymorphicItem> polymorphic;


  factory EdgeCases.fromJson(Map<String, dynamic> json) => _$EdgeCasesFromJson(json);
  
  Map<String, dynamic> toJson() => _$EdgeCasesToJson(this);
  
  factory EdgeCases.emptyInstance() => EdgeCases(emptyList: [], deepNull: DeepNull.emptyInstance(), polymorphic: []);
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class B with EquatableMixin {

  B(
      {this.c});

  @JsonKey(name: "c")
  final dynamic c;


  factory B.fromJson(Map<String, dynamic> json) => _$BFromJson(json);
  
  Map<String, dynamic> toJson() => _$BToJson(this);
  
  factory B.emptyInstance() => B();
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class DeepNull with EquatableMixin {

  DeepNull(
      {this.a,
      required this.b});

  @JsonKey(name: "a")
  final dynamic a;

  @JsonKey(name: "b", defaultValue: B.emptyInstance)
  final B b;


  factory DeepNull.fromJson(Map<String, dynamic> json) => _$DeepNullFromJson(json);
  
  Map<String, dynamic> toJson() => _$DeepNullToJson(this);
  
  factory DeepNull.emptyInstance() => DeepNull(b: B.emptyInstance());
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Polymorphic with EquatableMixin {

  Polymorphic(
      {required this.type,
      required this.content});

  @JsonKey(name: "type", defaultValue: "")
  final String type;

  @JsonKey(name: "content", defaultValue: "")
  final String content;


  factory Polymorphic.fromJson(Map<String, dynamic> json) => _$PolymorphicFromJson(json);
  
  Map<String, dynamic> toJson() => _$PolymorphicToJson(this);
  
  factory Polymorphic.emptyInstance() => Polymorphic(type: "", content: "");
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class PolymorphicItem with EquatableMixin {

  PolymorphicItem(
      {required this.type,
      this.content,
      this.url,
      this.width});

  @JsonKey(name: "type", defaultValue: "")
  final String type;

  @JsonKey(name: "content")
  final String? content;

  @JsonKey(name: "url")
  final String? url;

  @JsonKey(name: "width")
  final int? width;


  factory PolymorphicItem.fromJson(Map<String, dynamic> json) => _$PolymorphicItemFromJson(json);
  
  Map<String, dynamic> toJson() => _$PolymorphicItemToJson(this);
  
  factory PolymorphicItem.emptyInstance() => PolymorphicItem(type: "");
  
  @override
  List<Object?> get props => _$props;
}


