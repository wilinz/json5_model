import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:autoequal/autoequal.dart';

part 'complex.g.dart';

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Complex with EquatableMixin {

  Complex(
      {required this.response});

  @JsonKey(name: "response", defaultValue: Response.emptyInstance)
  final Response response;


  factory Complex.fromJson(Map<String, dynamic> json) => _$ComplexFromJson(json);
  
  Map<String, dynamic> toJson() => _$ComplexToJson(this);
  
  factory Complex.emptyInstance() => Complex(response: Response.emptyInstance());
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Details with EquatableMixin {

  Details(
      {required this.createdBy,
      required this.modifiedAt});

  @JsonKey(name: "created_by", defaultValue: "")
  final String createdBy;

  @JsonKey(name: "modified_at", defaultValue: "")
  final String modifiedAt;


  factory Details.fromJson(Map<String, dynamic> json) => _$DetailsFromJson(json);
  
  Map<String, dynamic> toJson() => _$DetailsToJson(this);
  
  factory Details.emptyInstance() => Details(createdBy: "", modifiedAt: "");
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Items with EquatableMixin {

  Items(
      {required this.id,
      required this.tags,
      required this.details});

  @JsonKey(name: "id", defaultValue: 0)
  final int id;

  @JsonKey(name: "tags", defaultValue: [])
  final List<String> tags;

  @JsonKey(name: "details", defaultValue: Details.emptyInstance)
  final Details details;


  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
  
  Map<String, dynamic> toJson() => _$ItemsToJson(this);
  
  factory Items.emptyInstance() => Items(id: 0, tags: [], details: Details.emptyInstance());
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class ItemsItem with EquatableMixin {

  ItemsItem(
      {required this.id,
      required this.tags,
      required this.details});

  @JsonKey(name: "id", defaultValue: 0)
  final int id;

  @JsonKey(name: "tags", defaultValue: [])
  final List<String> tags;

  @JsonKey(name: "details", defaultValue: Details.emptyInstance)
  final Details details;


  factory ItemsItem.fromJson(Map<String, dynamic> json) => _$ItemsItemFromJson(json);
  
  Map<String, dynamic> toJson() => _$ItemsItemToJson(this);
  
  factory ItemsItem.emptyInstance() => ItemsItem(id: 0, tags: [], details: Details.emptyInstance());
  
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
class Data with EquatableMixin {

  Data(
      {required this.items,
      required this.pagination});

  @JsonKey(name: "items", defaultValue: [])
  final List<ItemsItem> items;

  @JsonKey(name: "pagination", defaultValue: Pagination.emptyInstance)
  final Pagination pagination;


  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  
  Map<String, dynamic> toJson() => _$DataToJson(this);
  
  factory Data.emptyInstance() => Data(items: [], pagination: Pagination.emptyInstance());
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Response with EquatableMixin {

  Response(
      {required this.status,
      required this.data});

  @JsonKey(name: "status", defaultValue: 0)
  final int status;

  @JsonKey(name: "data", defaultValue: Data.emptyInstance)
  final Data data;


  factory Response.fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json);
  
  Map<String, dynamic> toJson() => _$ResponseToJson(this);
  
  factory Response.emptyInstance() => Response(status: 0, data: Data.emptyInstance());
  
  @override
  List<Object?> get props => _$props;
}


