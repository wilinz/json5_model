import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:autoequal/autoequal.dart';

part 'list_response.g.dart';

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class ListResponse with EquatableMixin {

  ListResponse(
      {required this.list});

  @JsonKey(name: "list", defaultValue: [])
  final List<ListItem> list;


  factory ListResponse.fromJson(Map<String, dynamic> json) => _$ListResponseFromJson(json);
  
  Map<String, dynamic> toJson() => _$ListResponseToJson(this);
  
  factory ListResponse.emptyInstance() => ListResponse(list: []);
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class ListX with EquatableMixin {

  ListX(
      {required this.title,
      required this.content});

  @JsonKey(name: "title", defaultValue: "")
  final String title;

  @JsonKey(name: "content", defaultValue: "")
  final String content;


  factory ListX.fromJson(Map<String, dynamic> json) => _$ListXFromJson(json);
  
  Map<String, dynamic> toJson() => _$ListXToJson(this);
  
  factory ListX.emptyInstance() => ListX(title: "", content: "");
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class ListItem with EquatableMixin {

  ListItem(
      {required this.title,
      required this.content});

  @JsonKey(name: "title", defaultValue: "")
  final String title;

  @JsonKey(name: "content", defaultValue: "")
  final String content;


  factory ListItem.fromJson(Map<String, dynamic> json) => _$ListItemFromJson(json);
  
  Map<String, dynamic> toJson() => _$ListItemToJson(this);
  
  factory ListItem.emptyInstance() => ListItem(title: "", content: "");
  
  @override
  List<Object?> get props => _$props;
}


