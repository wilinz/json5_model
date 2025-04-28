import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:autoequal/autoequal.dart';

part 'nested_object.g.dart';

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class NestedObject with EquatableMixin {

  NestedObject(
      {required this.user});

  @JsonKey(name: "user", defaultValue: User.emptyInstance)
  final User user;


  factory NestedObject.fromJson(Map<String, dynamic> json) => _$NestedObjectFromJson(json);
  
  Map<String, dynamic> toJson() => _$NestedObjectToJson(this);
  
  factory NestedObject.emptyInstance() => NestedObject(user: User.emptyInstance());
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class UpdateHistory with EquatableMixin {

  UpdateHistory(
      {required this.timestamp,
      required this.operatorX});

  @JsonKey(name: "timestamp", defaultValue: "")
  final String timestamp;

  @JsonKey(name: "operator", defaultValue: "")
  final String operatorX;


  factory UpdateHistory.fromJson(Map<String, dynamic> json) => _$UpdateHistoryFromJson(json);
  
  Map<String, dynamic> toJson() => _$UpdateHistoryToJson(this);
  
  factory UpdateHistory.emptyInstance() => UpdateHistory(timestamp: "", operatorX: "");
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class UpdateHistoryItem with EquatableMixin {

  UpdateHistoryItem(
      {required this.timestamp,
      this.operatorX});

  @JsonKey(name: "timestamp", defaultValue: "")
  final String timestamp;

  @JsonKey(name: "operator")
  final String? operatorX;


  factory UpdateHistoryItem.fromJson(Map<String, dynamic> json) => _$UpdateHistoryItemFromJson(json);
  
  Map<String, dynamic> toJson() => _$UpdateHistoryItemToJson(this);
  
  factory UpdateHistoryItem.emptyInstance() => UpdateHistoryItem(timestamp: "");
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Metadata with EquatableMixin {

  Metadata(
      {required this.createdAt,
      required this.updateHistory});

  @JsonKey(name: "created_at", defaultValue: "")
  final String createdAt;

  @JsonKey(name: "update_history", defaultValue: [])
  final List<UpdateHistoryItem> updateHistory;


  factory Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);
  
  Map<String, dynamic> toJson() => _$MetadataToJson(this);
  
  factory Metadata.emptyInstance() => Metadata(createdAt: "", updateHistory: []);
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class User with EquatableMixin {

  User(
      {required this.name,
      required this.classX,
      required this.metadata});

  @JsonKey(name: "name", defaultValue: "")
  final String name;

  @JsonKey(name: "class", defaultValue: "")
  final String classX;

  @JsonKey(name: "metadata", defaultValue: Metadata.emptyInstance)
  final Metadata metadata;


  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  
  Map<String, dynamic> toJson() => _$UserToJson(this);
  
  factory User.emptyInstance() => User(name: "", classX: "", metadata: Metadata.emptyInstance());
  
  @override
  List<Object?> get props => _$props;
}


