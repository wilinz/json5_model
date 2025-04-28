import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:autoequal/autoequal.dart';

part 'deep_nested.g.dart';

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class DeepNested with EquatableMixin {

  DeepNested(
      {required this.order});

  @JsonKey(name: "order", defaultValue: Order.emptyInstance)
  final Order order;


  factory DeepNested.fromJson(Map<String, dynamic> json) => _$DeepNestedFromJson(json);
  
  Map<String, dynamic> toJson() => _$DeepNestedToJson(this);
  
  factory DeepNested.emptyInstance() => DeepNested(order: Order.emptyInstance());
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Suppliers with EquatableMixin {

  Suppliers(
      {required this.id,
      required this.name});

  @JsonKey(name: "id", defaultValue: 0)
  final int id;

  @JsonKey(name: "name", defaultValue: "")
  final String name;


  factory Suppliers.fromJson(Map<String, dynamic> json) => _$SuppliersFromJson(json);
  
  Map<String, dynamic> toJson() => _$SuppliersToJson(this);
  
  factory Suppliers.emptyInstance() => Suppliers(id: 0, name: "");
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class SuppliersItem with EquatableMixin {

  SuppliersItem(
      {required this.id,
      required this.name});

  @JsonKey(name: "id", defaultValue: 0)
  final int id;

  @JsonKey(name: "name", defaultValue: "")
  final String name;


  factory SuppliersItem.fromJson(Map<String, dynamic> json) => _$SuppliersItemFromJson(json);
  
  Map<String, dynamic> toJson() => _$SuppliersItemToJson(this);
  
  factory SuppliersItem.emptyInstance() => SuppliersItem(id: 0, name: "");
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Product with EquatableMixin {

  Product(
      {required this.name,
      required this.suppliers});

  @JsonKey(name: "name", defaultValue: "")
  final String name;

  @JsonKey(name: "suppliers", defaultValue: [])
  final List<SuppliersItem> suppliers;


  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
  
  Map<String, dynamic> toJson() => _$ProductToJson(this);
  
  factory Product.emptyInstance() => Product(name: "", suppliers: []);
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Items with EquatableMixin {

  Items(
      {required this.product,
      required this.quantity});

  @JsonKey(name: "product", defaultValue: Product.emptyInstance)
  final Product product;

  @JsonKey(name: "quantity", defaultValue: 0)
  final int quantity;


  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
  
  Map<String, dynamic> toJson() => _$ItemsToJson(this);
  
  factory Items.emptyInstance() => Items(product: Product.emptyInstance(), quantity: 0);
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class ItemsItem with EquatableMixin {

  ItemsItem(
      {required this.product,
      required this.quantity});

  @JsonKey(name: "product", defaultValue: Product.emptyInstance)
  final Product product;

  @JsonKey(name: "quantity", defaultValue: 0)
  final int quantity;


  factory ItemsItem.fromJson(Map<String, dynamic> json) => _$ItemsItemFromJson(json);
  
  Map<String, dynamic> toJson() => _$ItemsItemToJson(this);
  
  factory ItemsItem.emptyInstance() => ItemsItem(product: Product.emptyInstance(), quantity: 0);
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Order with EquatableMixin {

  Order(
      {required this.orderId,
      required this.items});

  @JsonKey(name: "order_id", defaultValue: "")
  final String orderId;

  @JsonKey(name: "items", defaultValue: [])
  final List<ItemsItem> items;


  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
  
  Map<String, dynamic> toJson() => _$OrderToJson(this);
  
  factory Order.emptyInstance() => Order(orderId: "", items: []);
  
  @override
  List<Object?> get props => _$props;
}


