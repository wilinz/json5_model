// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deep_nested.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

extension _$DeepNestedAutoequal on DeepNested {
  List<Object?> get _$props => [order];
}

extension _$SuppliersAutoequal on Suppliers {
  List<Object?> get _$props => [id, name];
}

extension _$SuppliersItemAutoequal on SuppliersItem {
  List<Object?> get _$props => [id, name];
}

extension _$ProductAutoequal on Product {
  List<Object?> get _$props => [name, suppliers];
}

extension _$ItemsAutoequal on Items {
  List<Object?> get _$props => [product, quantity];
}

extension _$ItemsItemAutoequal on ItemsItem {
  List<Object?> get _$props => [product, quantity];
}

extension _$OrderAutoequal on Order {
  List<Object?> get _$props => [orderId, items];
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DeepNestedCWProxy {
  DeepNested order(Order order);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DeepNested(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DeepNested(...).copyWith(id: 12, name: "My name")
  /// ````
  DeepNested call({
    Order order,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDeepNested.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDeepNested.copyWith.fieldName(...)`
class _$DeepNestedCWProxyImpl implements _$DeepNestedCWProxy {
  const _$DeepNestedCWProxyImpl(this._value);

  final DeepNested _value;

  @override
  DeepNested order(Order order) => this(order: order);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DeepNested(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DeepNested(...).copyWith(id: 12, name: "My name")
  /// ````
  DeepNested call({
    Object? order = const $CopyWithPlaceholder(),
  }) {
    return DeepNested(
      order: order == const $CopyWithPlaceholder()
          ? _value.order
          // ignore: cast_nullable_to_non_nullable
          : order as Order,
    );
  }
}

extension $DeepNestedCopyWith on DeepNested {
  /// Returns a callable class that can be used as follows: `instanceOfDeepNested.copyWith(...)` or like so:`instanceOfDeepNested.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DeepNestedCWProxy get copyWith => _$DeepNestedCWProxyImpl(this);
}

abstract class _$SuppliersCWProxy {
  Suppliers id(int id);

  Suppliers name(String name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Suppliers(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Suppliers(...).copyWith(id: 12, name: "My name")
  /// ````
  Suppliers call({
    int id,
    String name,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSuppliers.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSuppliers.copyWith.fieldName(...)`
class _$SuppliersCWProxyImpl implements _$SuppliersCWProxy {
  const _$SuppliersCWProxyImpl(this._value);

  final Suppliers _value;

  @override
  Suppliers id(int id) => this(id: id);

  @override
  Suppliers name(String name) => this(name: name);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Suppliers(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Suppliers(...).copyWith(id: 12, name: "My name")
  /// ````
  Suppliers call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return Suppliers(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
    );
  }
}

extension $SuppliersCopyWith on Suppliers {
  /// Returns a callable class that can be used as follows: `instanceOfSuppliers.copyWith(...)` or like so:`instanceOfSuppliers.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SuppliersCWProxy get copyWith => _$SuppliersCWProxyImpl(this);
}

abstract class _$SuppliersItemCWProxy {
  SuppliersItem id(int id);

  SuppliersItem name(String name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SuppliersItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SuppliersItem(...).copyWith(id: 12, name: "My name")
  /// ````
  SuppliersItem call({
    int id,
    String name,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSuppliersItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSuppliersItem.copyWith.fieldName(...)`
class _$SuppliersItemCWProxyImpl implements _$SuppliersItemCWProxy {
  const _$SuppliersItemCWProxyImpl(this._value);

  final SuppliersItem _value;

  @override
  SuppliersItem id(int id) => this(id: id);

  @override
  SuppliersItem name(String name) => this(name: name);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SuppliersItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SuppliersItem(...).copyWith(id: 12, name: "My name")
  /// ````
  SuppliersItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return SuppliersItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
    );
  }
}

extension $SuppliersItemCopyWith on SuppliersItem {
  /// Returns a callable class that can be used as follows: `instanceOfSuppliersItem.copyWith(...)` or like so:`instanceOfSuppliersItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SuppliersItemCWProxy get copyWith => _$SuppliersItemCWProxyImpl(this);
}

abstract class _$ProductCWProxy {
  Product name(String name);

  Product suppliers(List<SuppliersItem> suppliers);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Product(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Product(...).copyWith(id: 12, name: "My name")
  /// ````
  Product call({
    String name,
    List<SuppliersItem> suppliers,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProduct.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProduct.copyWith.fieldName(...)`
class _$ProductCWProxyImpl implements _$ProductCWProxy {
  const _$ProductCWProxyImpl(this._value);

  final Product _value;

  @override
  Product name(String name) => this(name: name);

  @override
  Product suppliers(List<SuppliersItem> suppliers) =>
      this(suppliers: suppliers);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Product(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Product(...).copyWith(id: 12, name: "My name")
  /// ````
  Product call({
    Object? name = const $CopyWithPlaceholder(),
    Object? suppliers = const $CopyWithPlaceholder(),
  }) {
    return Product(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      suppliers: suppliers == const $CopyWithPlaceholder()
          ? _value.suppliers
          // ignore: cast_nullable_to_non_nullable
          : suppliers as List<SuppliersItem>,
    );
  }
}

extension $ProductCopyWith on Product {
  /// Returns a callable class that can be used as follows: `instanceOfProduct.copyWith(...)` or like so:`instanceOfProduct.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductCWProxy get copyWith => _$ProductCWProxyImpl(this);
}

abstract class _$ItemsCWProxy {
  Items product(Product product);

  Items quantity(int quantity);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Items(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Items(...).copyWith(id: 12, name: "My name")
  /// ````
  Items call({
    Product product,
    int quantity,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfItems.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfItems.copyWith.fieldName(...)`
class _$ItemsCWProxyImpl implements _$ItemsCWProxy {
  const _$ItemsCWProxyImpl(this._value);

  final Items _value;

  @override
  Items product(Product product) => this(product: product);

  @override
  Items quantity(int quantity) => this(quantity: quantity);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Items(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Items(...).copyWith(id: 12, name: "My name")
  /// ````
  Items call({
    Object? product = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
  }) {
    return Items(
      product: product == const $CopyWithPlaceholder()
          ? _value.product
          // ignore: cast_nullable_to_non_nullable
          : product as Product,
      quantity: quantity == const $CopyWithPlaceholder()
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int,
    );
  }
}

extension $ItemsCopyWith on Items {
  /// Returns a callable class that can be used as follows: `instanceOfItems.copyWith(...)` or like so:`instanceOfItems.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ItemsCWProxy get copyWith => _$ItemsCWProxyImpl(this);
}

abstract class _$ItemsItemCWProxy {
  ItemsItem product(Product product);

  ItemsItem quantity(int quantity);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ItemsItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ItemsItem(...).copyWith(id: 12, name: "My name")
  /// ````
  ItemsItem call({
    Product product,
    int quantity,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfItemsItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfItemsItem.copyWith.fieldName(...)`
class _$ItemsItemCWProxyImpl implements _$ItemsItemCWProxy {
  const _$ItemsItemCWProxyImpl(this._value);

  final ItemsItem _value;

  @override
  ItemsItem product(Product product) => this(product: product);

  @override
  ItemsItem quantity(int quantity) => this(quantity: quantity);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ItemsItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ItemsItem(...).copyWith(id: 12, name: "My name")
  /// ````
  ItemsItem call({
    Object? product = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
  }) {
    return ItemsItem(
      product: product == const $CopyWithPlaceholder()
          ? _value.product
          // ignore: cast_nullable_to_non_nullable
          : product as Product,
      quantity: quantity == const $CopyWithPlaceholder()
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int,
    );
  }
}

extension $ItemsItemCopyWith on ItemsItem {
  /// Returns a callable class that can be used as follows: `instanceOfItemsItem.copyWith(...)` or like so:`instanceOfItemsItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ItemsItemCWProxy get copyWith => _$ItemsItemCWProxyImpl(this);
}

abstract class _$OrderCWProxy {
  Order orderId(String orderId);

  Order items(List<ItemsItem> items);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Order(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Order(...).copyWith(id: 12, name: "My name")
  /// ````
  Order call({
    String orderId,
    List<ItemsItem> items,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOrder.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOrder.copyWith.fieldName(...)`
class _$OrderCWProxyImpl implements _$OrderCWProxy {
  const _$OrderCWProxyImpl(this._value);

  final Order _value;

  @override
  Order orderId(String orderId) => this(orderId: orderId);

  @override
  Order items(List<ItemsItem> items) => this(items: items);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Order(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Order(...).copyWith(id: 12, name: "My name")
  /// ````
  Order call({
    Object? orderId = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
  }) {
    return Order(
      orderId: orderId == const $CopyWithPlaceholder()
          ? _value.orderId
          // ignore: cast_nullable_to_non_nullable
          : orderId as String,
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<ItemsItem>,
    );
  }
}

extension $OrderCopyWith on Order {
  /// Returns a callable class that can be used as follows: `instanceOfOrder.copyWith(...)` or like so:`instanceOfOrder.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderCWProxy get copyWith => _$OrderCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeepNested _$DeepNestedFromJson(Map<String, dynamic> json) => DeepNested(
      order: json['order'] == null
          ? Order.emptyInstance()
          : Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeepNestedToJson(DeepNested instance) =>
    <String, dynamic>{
      'order': instance.order.toJson(),
    };

Suppliers _$SuppliersFromJson(Map<String, dynamic> json) => Suppliers(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$SuppliersToJson(Suppliers instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

SuppliersItem _$SuppliersItemFromJson(Map<String, dynamic> json) =>
    SuppliersItem(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$SuppliersItemToJson(SuppliersItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      name: json['name'] as String? ?? '',
      suppliers: (json['suppliers'] as List<dynamic>?)
              ?.map((e) => SuppliersItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'name': instance.name,
      'suppliers': instance.suppliers.map((e) => e.toJson()).toList(),
    };

Items _$ItemsFromJson(Map<String, dynamic> json) => Items(
      product: json['product'] == null
          ? Product.emptyInstance()
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'product': instance.product.toJson(),
      'quantity': instance.quantity,
    };

ItemsItem _$ItemsItemFromJson(Map<String, dynamic> json) => ItemsItem(
      product: json['product'] == null
          ? Product.emptyInstance()
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ItemsItemToJson(ItemsItem instance) => <String, dynamic>{
      'product': instance.product.toJson(),
      'quantity': instance.quantity,
    };

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      orderId: json['order_id'] as String? ?? '',
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ItemsItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'order_id': instance.orderId,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
