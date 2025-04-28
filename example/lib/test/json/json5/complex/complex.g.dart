// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complex.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

extension _$ComplexAutoequal on Complex {
  List<Object?> get _$props => [response];
}

extension _$DetailsAutoequal on Details {
  List<Object?> get _$props => [createdBy, modifiedAt];
}

extension _$ItemsAutoequal on Items {
  List<Object?> get _$props => [id, tags, details];
}

extension _$ItemsItemAutoequal on ItemsItem {
  List<Object?> get _$props => [id, tags, details];
}

extension _$PaginationAutoequal on Pagination {
  List<Object?> get _$props => [total, pageSize];
}

extension _$DataAutoequal on Data {
  List<Object?> get _$props => [items, pagination];
}

extension _$ResponseAutoequal on Response {
  List<Object?> get _$props => [status, data];
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ComplexCWProxy {
  Complex response(Response response);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Complex(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Complex(...).copyWith(id: 12, name: "My name")
  /// ````
  Complex call({
    Response response,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfComplex.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfComplex.copyWith.fieldName(...)`
class _$ComplexCWProxyImpl implements _$ComplexCWProxy {
  const _$ComplexCWProxyImpl(this._value);

  final Complex _value;

  @override
  Complex response(Response response) => this(response: response);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Complex(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Complex(...).copyWith(id: 12, name: "My name")
  /// ````
  Complex call({
    Object? response = const $CopyWithPlaceholder(),
  }) {
    return Complex(
      response: response == const $CopyWithPlaceholder()
          ? _value.response
          // ignore: cast_nullable_to_non_nullable
          : response as Response,
    );
  }
}

extension $ComplexCopyWith on Complex {
  /// Returns a callable class that can be used as follows: `instanceOfComplex.copyWith(...)` or like so:`instanceOfComplex.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ComplexCWProxy get copyWith => _$ComplexCWProxyImpl(this);
}

abstract class _$DetailsCWProxy {
  Details createdBy(String createdBy);

  Details modifiedAt(String modifiedAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Details(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Details(...).copyWith(id: 12, name: "My name")
  /// ````
  Details call({
    String createdBy,
    String modifiedAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDetails.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDetails.copyWith.fieldName(...)`
class _$DetailsCWProxyImpl implements _$DetailsCWProxy {
  const _$DetailsCWProxyImpl(this._value);

  final Details _value;

  @override
  Details createdBy(String createdBy) => this(createdBy: createdBy);

  @override
  Details modifiedAt(String modifiedAt) => this(modifiedAt: modifiedAt);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Details(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Details(...).copyWith(id: 12, name: "My name")
  /// ````
  Details call({
    Object? createdBy = const $CopyWithPlaceholder(),
    Object? modifiedAt = const $CopyWithPlaceholder(),
  }) {
    return Details(
      createdBy: createdBy == const $CopyWithPlaceholder()
          ? _value.createdBy
          // ignore: cast_nullable_to_non_nullable
          : createdBy as String,
      modifiedAt: modifiedAt == const $CopyWithPlaceholder()
          ? _value.modifiedAt
          // ignore: cast_nullable_to_non_nullable
          : modifiedAt as String,
    );
  }
}

extension $DetailsCopyWith on Details {
  /// Returns a callable class that can be used as follows: `instanceOfDetails.copyWith(...)` or like so:`instanceOfDetails.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DetailsCWProxy get copyWith => _$DetailsCWProxyImpl(this);
}

abstract class _$ItemsCWProxy {
  Items id(int id);

  Items tags(List<String> tags);

  Items details(Details details);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Items(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Items(...).copyWith(id: 12, name: "My name")
  /// ````
  Items call({
    int id,
    List<String> tags,
    Details details,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfItems.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfItems.copyWith.fieldName(...)`
class _$ItemsCWProxyImpl implements _$ItemsCWProxy {
  const _$ItemsCWProxyImpl(this._value);

  final Items _value;

  @override
  Items id(int id) => this(id: id);

  @override
  Items tags(List<String> tags) => this(tags: tags);

  @override
  Items details(Details details) => this(details: details);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Items(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Items(...).copyWith(id: 12, name: "My name")
  /// ````
  Items call({
    Object? id = const $CopyWithPlaceholder(),
    Object? tags = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
  }) {
    return Items(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      tags: tags == const $CopyWithPlaceholder()
          ? _value.tags
          // ignore: cast_nullable_to_non_nullable
          : tags as List<String>,
      details: details == const $CopyWithPlaceholder()
          ? _value.details
          // ignore: cast_nullable_to_non_nullable
          : details as Details,
    );
  }
}

extension $ItemsCopyWith on Items {
  /// Returns a callable class that can be used as follows: `instanceOfItems.copyWith(...)` or like so:`instanceOfItems.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ItemsCWProxy get copyWith => _$ItemsCWProxyImpl(this);
}

abstract class _$ItemsItemCWProxy {
  ItemsItem id(int id);

  ItemsItem tags(List<String> tags);

  ItemsItem details(Details details);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ItemsItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ItemsItem(...).copyWith(id: 12, name: "My name")
  /// ````
  ItemsItem call({
    int id,
    List<String> tags,
    Details details,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfItemsItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfItemsItem.copyWith.fieldName(...)`
class _$ItemsItemCWProxyImpl implements _$ItemsItemCWProxy {
  const _$ItemsItemCWProxyImpl(this._value);

  final ItemsItem _value;

  @override
  ItemsItem id(int id) => this(id: id);

  @override
  ItemsItem tags(List<String> tags) => this(tags: tags);

  @override
  ItemsItem details(Details details) => this(details: details);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ItemsItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ItemsItem(...).copyWith(id: 12, name: "My name")
  /// ````
  ItemsItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? tags = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
  }) {
    return ItemsItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      tags: tags == const $CopyWithPlaceholder()
          ? _value.tags
          // ignore: cast_nullable_to_non_nullable
          : tags as List<String>,
      details: details == const $CopyWithPlaceholder()
          ? _value.details
          // ignore: cast_nullable_to_non_nullable
          : details as Details,
    );
  }
}

extension $ItemsItemCopyWith on ItemsItem {
  /// Returns a callable class that can be used as follows: `instanceOfItemsItem.copyWith(...)` or like so:`instanceOfItemsItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ItemsItemCWProxy get copyWith => _$ItemsItemCWProxyImpl(this);
}

abstract class _$PaginationCWProxy {
  Pagination total(int total);

  Pagination pageSize(int pageSize);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Pagination(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Pagination(...).copyWith(id: 12, name: "My name")
  /// ````
  Pagination call({
    int total,
    int pageSize,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPagination.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPagination.copyWith.fieldName(...)`
class _$PaginationCWProxyImpl implements _$PaginationCWProxy {
  const _$PaginationCWProxyImpl(this._value);

  final Pagination _value;

  @override
  Pagination total(int total) => this(total: total);

  @override
  Pagination pageSize(int pageSize) => this(pageSize: pageSize);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Pagination(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Pagination(...).copyWith(id: 12, name: "My name")
  /// ````
  Pagination call({
    Object? total = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
  }) {
    return Pagination(
      total: total == const $CopyWithPlaceholder()
          ? _value.total
          // ignore: cast_nullable_to_non_nullable
          : total as int,
      pageSize: pageSize == const $CopyWithPlaceholder()
          ? _value.pageSize
          // ignore: cast_nullable_to_non_nullable
          : pageSize as int,
    );
  }
}

extension $PaginationCopyWith on Pagination {
  /// Returns a callable class that can be used as follows: `instanceOfPagination.copyWith(...)` or like so:`instanceOfPagination.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginationCWProxy get copyWith => _$PaginationCWProxyImpl(this);
}

abstract class _$DataCWProxy {
  Data items(List<ItemsItem> items);

  Data pagination(Pagination pagination);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Data(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Data(...).copyWith(id: 12, name: "My name")
  /// ````
  Data call({
    List<ItemsItem> items,
    Pagination pagination,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfData.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfData.copyWith.fieldName(...)`
class _$DataCWProxyImpl implements _$DataCWProxy {
  const _$DataCWProxyImpl(this._value);

  final Data _value;

  @override
  Data items(List<ItemsItem> items) => this(items: items);

  @override
  Data pagination(Pagination pagination) => this(pagination: pagination);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Data(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Data(...).copyWith(id: 12, name: "My name")
  /// ````
  Data call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pagination = const $CopyWithPlaceholder(),
  }) {
    return Data(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<ItemsItem>,
      pagination: pagination == const $CopyWithPlaceholder()
          ? _value.pagination
          // ignore: cast_nullable_to_non_nullable
          : pagination as Pagination,
    );
  }
}

extension $DataCopyWith on Data {
  /// Returns a callable class that can be used as follows: `instanceOfData.copyWith(...)` or like so:`instanceOfData.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DataCWProxy get copyWith => _$DataCWProxyImpl(this);
}

abstract class _$ResponseCWProxy {
  Response status(int status);

  Response data(Data data);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Response(...).copyWith(id: 12, name: "My name")
  /// ````
  Response call({
    int status,
    Data data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfResponse.copyWith.fieldName(...)`
class _$ResponseCWProxyImpl implements _$ResponseCWProxy {
  const _$ResponseCWProxyImpl(this._value);

  final Response _value;

  @override
  Response status(int status) => this(status: status);

  @override
  Response data(Data data) => this(data: data);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Response(...).copyWith(id: 12, name: "My name")
  /// ````
  Response call({
    Object? status = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return Response(
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as int,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as Data,
    );
  }
}

extension $ResponseCopyWith on Response {
  /// Returns a callable class that can be used as follows: `instanceOfResponse.copyWith(...)` or like so:`instanceOfResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ResponseCWProxy get copyWith => _$ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Complex _$ComplexFromJson(Map<String, dynamic> json) => Complex(
      response: json['response'] == null
          ? Response.emptyInstance()
          : Response.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ComplexToJson(Complex instance) => <String, dynamic>{
      'response': instance.response.toJson(),
    };

Details _$DetailsFromJson(Map<String, dynamic> json) => Details(
      createdBy: json['created_by'] as String? ?? '',
      modifiedAt: json['modified_at'] as String? ?? '',
    );

Map<String, dynamic> _$DetailsToJson(Details instance) => <String, dynamic>{
      'created_by': instance.createdBy,
      'modified_at': instance.modifiedAt,
    };

Items _$ItemsFromJson(Map<String, dynamic> json) => Items(
      id: (json['id'] as num?)?.toInt() ?? 0,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      details: json['details'] == null
          ? Details.emptyInstance()
          : Details.fromJson(json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'id': instance.id,
      'tags': instance.tags,
      'details': instance.details.toJson(),
    };

ItemsItem _$ItemsItemFromJson(Map<String, dynamic> json) => ItemsItem(
      id: (json['id'] as num?)?.toInt() ?? 0,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      details: json['details'] == null
          ? Details.emptyInstance()
          : Details.fromJson(json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemsItemToJson(ItemsItem instance) => <String, dynamic>{
      'id': instance.id,
      'tags': instance.tags,
      'details': instance.details.toJson(),
    };

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
      total: (json['total'] as num?)?.toInt() ?? 0,
      pageSize: (json['page_size'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page_size': instance.pageSize,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ItemsItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      pagination: json['pagination'] == null
          ? Pagination.emptyInstance()
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'pagination': instance.pagination.toJson(),
    };

Response _$ResponseFromJson(Map<String, dynamic> json) => Response(
      status: (json['status'] as num?)?.toInt() ?? 0,
      data: json['data'] == null
          ? Data.emptyInstance()
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseToJson(Response instance) => <String, dynamic>{
      'status': instance.status,
      'data': instance.data.toJson(),
    };
