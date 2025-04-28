import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:autoequal/autoequal.dart';

part 'keyword_conflict.g.dart';

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class KeywordConflict with EquatableMixin {

  KeywordConflict(
      {required this.classX,
      required this.interfaceX,
      required this.list,
      required this.map,
      required this.future});

  @JsonKey(name: "class", defaultValue: "")
  final String classX;

  @JsonKey(name: "interface", defaultValue: "")
  final String interfaceX;

  @JsonKey(name: "list", defaultValue: [])
  final List<String> list;

  @JsonKey(name: "map", defaultValue: MapX.emptyInstance)
  final MapX map;

  @JsonKey(name: "future", defaultValue: "")
  final String future;


  factory KeywordConflict.fromJson(Map<String, dynamic> json) => _$KeywordConflictFromJson(json);
  
  Map<String, dynamic> toJson() => _$KeywordConflictToJson(this);
  
  factory KeywordConflict.emptyInstance() => KeywordConflict(classX: "", interfaceX: "", list: [], map: MapX.emptyInstance(), future: "");
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class MapX with EquatableMixin {

  MapX(
      {required this.key});

  @JsonKey(name: "key", defaultValue: "")
  final String key;


  factory MapX.fromJson(Map<String, dynamic> json) => _$MapXFromJson(json);
  
  Map<String, dynamic> toJson() => _$MapXToJson(this);
  
  factory MapX.emptyInstance() => MapX(key: "");
  
  @override
  List<Object?> get props => _$props;
}


