import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:autoequal/autoequal.dart';

part 'array_types.g.dart';

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class ArrayTypes with EquatableMixin {

  ArrayTypes(
      {required this.numbers,
      required this.users,
      required this.mixedList});

  @JsonKey(name: "numbers", defaultValue: [])
  final List<int> numbers;

  @JsonKey(name: "users", defaultValue: [])
  final List<UsersItem> users;

  @JsonKey(name: "mixed_list", defaultValue: [])
  final List<int> mixedList;


  factory ArrayTypes.fromJson(Map<String, dynamic> json) => _$ArrayTypesFromJson(json);
  
  Map<String, dynamic> toJson() => _$ArrayTypesToJson(this);
  
  factory ArrayTypes.emptyInstance() => ArrayTypes(numbers: [], users: [], mixedList: []);
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Users with EquatableMixin {

  Users(
      {required this.name,
      required this.type});

  @JsonKey(name: "name", defaultValue: "")
  final String name;

  @JsonKey(name: "type", defaultValue: "")
  final String type;


  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
  
  Map<String, dynamic> toJson() => _$UsersToJson(this);
  
  factory Users.emptyInstance() => Users(name: "", type: "");
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class UsersItem with EquatableMixin {

  UsersItem(
      {required this.name,
      required this.type});

  @JsonKey(name: "name", defaultValue: "")
  final String name;

  @JsonKey(name: "type", defaultValue: "")
  final String type;


  factory UsersItem.fromJson(Map<String, dynamic> json) => _$UsersItemFromJson(json);
  
  Map<String, dynamic> toJson() => _$UsersItemToJson(this);
  
  factory UsersItem.emptyInstance() => UsersItem(name: "", type: "");
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class MixedList with EquatableMixin {

  MixedList(
      {required this.value});

  @JsonKey(name: "value", defaultValue: "")
  final String value;


  factory MixedList.fromJson(Map<String, dynamic> json) => _$MixedListFromJson(json);
  
  Map<String, dynamic> toJson() => _$MixedListToJson(this);
  
  factory MixedList.emptyInstance() => MixedList(value: "");
  
  @override
  List<Object?> get props => _$props;
}


