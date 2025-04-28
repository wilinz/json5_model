import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:autoequal/autoequal.dart';

part 'generics.g.dart';

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Generics with EquatableMixin {

  Generics(
      {required this.response});

  @JsonKey(name: "response", defaultValue: Response.emptyInstance)
  final Response response;


  factory Generics.fromJson(Map<String, dynamic> json) => _$GenericsFromJson(json);
  
  Map<String, dynamic> toJson() => _$GenericsToJson(this);
  
  factory Generics.emptyInstance() => Generics(response: Response.emptyInstance());
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Pagination with EquatableMixin {

  Pagination(
      {required this.total,
      required this.pageSize});

  @JsonKey(name: "total", defaultValue: 0)
  final int total;

  @JsonKey(name: "page_size", defaultValue: 0)
  final int pageSize;


  factory Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);
  
  Map<String, dynamic> toJson() => _$PaginationToJson(this);
  
  factory Pagination.emptyInstance() => Pagination(total: 0, pageSize: 0);
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Meta with EquatableMixin {

  Meta(
      {required this.pagination});

  @JsonKey(name: "pagination", defaultValue: Pagination.emptyInstance)
  final Pagination pagination;


  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
  
  Map<String, dynamic> toJson() => _$MetaToJson(this);
  
  factory Meta.emptyInstance() => Meta(pagination: Pagination.emptyInstance());
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Tags with EquatableMixin {

  Tags(
      {required this.frontend,
      required this.backend});

  @JsonKey(name: "frontend", defaultValue: 0)
  final int frontend;

  @JsonKey(name: "backend", defaultValue: 0)
  final int backend;


  factory Tags.fromJson(Map<String, dynamic> json) => _$TagsFromJson(json);
  
  Map<String, dynamic> toJson() => _$TagsToJson(this);
  
  factory Tags.emptyInstance() => Tags(frontend: 0, backend: 0);
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Attributes with EquatableMixin {

  Attributes(
      {required this.scores,
      required this.tags});

  @JsonKey(name: "scores", defaultValue: [])
  final List<double?> scores;

  @JsonKey(name: "tags", defaultValue: Tags.emptyInstance)
  final Tags tags;


  factory Attributes.fromJson(Map<String, dynamic> json) => _$AttributesFromJson(json);
  
  Map<String, dynamic> toJson() => _$AttributesToJson(this);
  
  factory Attributes.emptyInstance() => Attributes(scores: [], tags: Tags.emptyInstance());
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Data with EquatableMixin {

  Data(
      {required this.id,
      required this.attributes});

  @JsonKey(name: "id", defaultValue: "")
  final String id;

  @JsonKey(name: "attributes", defaultValue: Attributes.emptyInstance)
  final Attributes attributes;


  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  
  Map<String, dynamic> toJson() => _$DataToJson(this);
  
  factory Data.emptyInstance() => Data(id: "", attributes: Attributes.emptyInstance());
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class DataItem with EquatableMixin {

  DataItem(
      {required this.id,
      required this.attributes});

  @JsonKey(name: "id", defaultValue: "")
  final String id;

  @JsonKey(name: "attributes", defaultValue: Attributes.emptyInstance)
  final Attributes attributes;


  factory DataItem.fromJson(Map<String, dynamic> json) => _$DataItemFromJson(json);
  
  Map<String, dynamic> toJson() => _$DataItemToJson(this);
  
  factory DataItem.emptyInstance() => DataItem(id: "", attributes: Attributes.emptyInstance());
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Response with EquatableMixin {

  Response(
      {required this.meta,
      required this.data});

  @JsonKey(name: "meta", defaultValue: Meta.emptyInstance)
  final Meta meta;

  @JsonKey(name: "data", defaultValue: [])
  final List<DataItem> data;


  factory Response.fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json);
  
  Map<String, dynamic> toJson() => _$ResponseToJson(this);
  
  factory Response.emptyInstance() => Response(meta: Meta.emptyInstance(), data: []);
  
  @override
  List<Object?> get props => _$props;
}


