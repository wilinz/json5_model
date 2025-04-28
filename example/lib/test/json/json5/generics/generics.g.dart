// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generics.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

extension _$GenericsAutoequal on Generics {
  List<Object?> get _$props => [response];
}

extension _$PaginationAutoequal on Pagination {
  List<Object?> get _$props => [total, pageSize];
}

extension _$MetaAutoequal on Meta {
  List<Object?> get _$props => [pagination];
}

extension _$TagsAutoequal on Tags {
  List<Object?> get _$props => [frontend, backend];
}

extension _$AttributesAutoequal on Attributes {
  List<Object?> get _$props => [scores, tags];
}

extension _$DataAutoequal on Data {
  List<Object?> get _$props => [id, attributes];
}

extension _$DataItemAutoequal on DataItem {
  List<Object?> get _$props => [id, attributes];
}

extension _$ResponseAutoequal on Response {
  List<Object?> get _$props => [meta, data];
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GenericsCWProxy {
  Generics response(Response response);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Generics(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Generics(...).copyWith(id: 12, name: "My name")
  /// ````
  Generics call({
    Response response,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGenerics.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfGenerics.copyWith.fieldName(...)`
class _$GenericsCWProxyImpl implements _$GenericsCWProxy {
  const _$GenericsCWProxyImpl(this._value);

  final Generics _value;

  @override
  Generics response(Response response) => this(response: response);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Generics(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Generics(...).copyWith(id: 12, name: "My name")
  /// ````
  Generics call({
    Object? response = const $CopyWithPlaceholder(),
  }) {
    return Generics(
      response: response == const $CopyWithPlaceholder()
          ? _value.response
          // ignore: cast_nullable_to_non_nullable
          : response as Response,
    );
  }
}

extension $GenericsCopyWith on Generics {
  /// Returns a callable class that can be used as follows: `instanceOfGenerics.copyWith(...)` or like so:`instanceOfGenerics.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$GenericsCWProxy get copyWith => _$GenericsCWProxyImpl(this);
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

abstract class _$MetaCWProxy {
  Meta pagination(Pagination pagination);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Meta(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Meta(...).copyWith(id: 12, name: "My name")
  /// ````
  Meta call({
    Pagination pagination,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMeta.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMeta.copyWith.fieldName(...)`
class _$MetaCWProxyImpl implements _$MetaCWProxy {
  const _$MetaCWProxyImpl(this._value);

  final Meta _value;

  @override
  Meta pagination(Pagination pagination) => this(pagination: pagination);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Meta(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Meta(...).copyWith(id: 12, name: "My name")
  /// ````
  Meta call({
    Object? pagination = const $CopyWithPlaceholder(),
  }) {
    return Meta(
      pagination: pagination == const $CopyWithPlaceholder()
          ? _value.pagination
          // ignore: cast_nullable_to_non_nullable
          : pagination as Pagination,
    );
  }
}

extension $MetaCopyWith on Meta {
  /// Returns a callable class that can be used as follows: `instanceOfMeta.copyWith(...)` or like so:`instanceOfMeta.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MetaCWProxy get copyWith => _$MetaCWProxyImpl(this);
}

abstract class _$TagsCWProxy {
  Tags frontend(int frontend);

  Tags backend(int backend);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Tags(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Tags(...).copyWith(id: 12, name: "My name")
  /// ````
  Tags call({
    int frontend,
    int backend,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTags.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTags.copyWith.fieldName(...)`
class _$TagsCWProxyImpl implements _$TagsCWProxy {
  const _$TagsCWProxyImpl(this._value);

  final Tags _value;

  @override
  Tags frontend(int frontend) => this(frontend: frontend);

  @override
  Tags backend(int backend) => this(backend: backend);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Tags(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Tags(...).copyWith(id: 12, name: "My name")
  /// ````
  Tags call({
    Object? frontend = const $CopyWithPlaceholder(),
    Object? backend = const $CopyWithPlaceholder(),
  }) {
    return Tags(
      frontend: frontend == const $CopyWithPlaceholder()
          ? _value.frontend
          // ignore: cast_nullable_to_non_nullable
          : frontend as int,
      backend: backend == const $CopyWithPlaceholder()
          ? _value.backend
          // ignore: cast_nullable_to_non_nullable
          : backend as int,
    );
  }
}

extension $TagsCopyWith on Tags {
  /// Returns a callable class that can be used as follows: `instanceOfTags.copyWith(...)` or like so:`instanceOfTags.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TagsCWProxy get copyWith => _$TagsCWProxyImpl(this);
}

abstract class _$AttributesCWProxy {
  Attributes scores(List<double?> scores);

  Attributes tags(Tags tags);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Attributes(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Attributes(...).copyWith(id: 12, name: "My name")
  /// ````
  Attributes call({
    List<double?> scores,
    Tags tags,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAttributes.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAttributes.copyWith.fieldName(...)`
class _$AttributesCWProxyImpl implements _$AttributesCWProxy {
  const _$AttributesCWProxyImpl(this._value);

  final Attributes _value;

  @override
  Attributes scores(List<double?> scores) => this(scores: scores);

  @override
  Attributes tags(Tags tags) => this(tags: tags);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Attributes(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Attributes(...).copyWith(id: 12, name: "My name")
  /// ````
  Attributes call({
    Object? scores = const $CopyWithPlaceholder(),
    Object? tags = const $CopyWithPlaceholder(),
  }) {
    return Attributes(
      scores: scores == const $CopyWithPlaceholder()
          ? _value.scores
          // ignore: cast_nullable_to_non_nullable
          : scores as List<double?>,
      tags: tags == const $CopyWithPlaceholder()
          ? _value.tags
          // ignore: cast_nullable_to_non_nullable
          : tags as Tags,
    );
  }
}

extension $AttributesCopyWith on Attributes {
  /// Returns a callable class that can be used as follows: `instanceOfAttributes.copyWith(...)` or like so:`instanceOfAttributes.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AttributesCWProxy get copyWith => _$AttributesCWProxyImpl(this);
}

abstract class _$DataCWProxy {
  Data id(String id);

  Data attributes(Attributes attributes);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Data(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Data(...).copyWith(id: 12, name: "My name")
  /// ````
  Data call({
    String id,
    Attributes attributes,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfData.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfData.copyWith.fieldName(...)`
class _$DataCWProxyImpl implements _$DataCWProxy {
  const _$DataCWProxyImpl(this._value);

  final Data _value;

  @override
  Data id(String id) => this(id: id);

  @override
  Data attributes(Attributes attributes) => this(attributes: attributes);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Data(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Data(...).copyWith(id: 12, name: "My name")
  /// ````
  Data call({
    Object? id = const $CopyWithPlaceholder(),
    Object? attributes = const $CopyWithPlaceholder(),
  }) {
    return Data(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      attributes: attributes == const $CopyWithPlaceholder()
          ? _value.attributes
          // ignore: cast_nullable_to_non_nullable
          : attributes as Attributes,
    );
  }
}

extension $DataCopyWith on Data {
  /// Returns a callable class that can be used as follows: `instanceOfData.copyWith(...)` or like so:`instanceOfData.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DataCWProxy get copyWith => _$DataCWProxyImpl(this);
}

abstract class _$DataItemCWProxy {
  DataItem id(String id);

  DataItem attributes(Attributes attributes);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DataItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DataItem(...).copyWith(id: 12, name: "My name")
  /// ````
  DataItem call({
    String id,
    Attributes attributes,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDataItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDataItem.copyWith.fieldName(...)`
class _$DataItemCWProxyImpl implements _$DataItemCWProxy {
  const _$DataItemCWProxyImpl(this._value);

  final DataItem _value;

  @override
  DataItem id(String id) => this(id: id);

  @override
  DataItem attributes(Attributes attributes) => this(attributes: attributes);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DataItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DataItem(...).copyWith(id: 12, name: "My name")
  /// ````
  DataItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? attributes = const $CopyWithPlaceholder(),
  }) {
    return DataItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      attributes: attributes == const $CopyWithPlaceholder()
          ? _value.attributes
          // ignore: cast_nullable_to_non_nullable
          : attributes as Attributes,
    );
  }
}

extension $DataItemCopyWith on DataItem {
  /// Returns a callable class that can be used as follows: `instanceOfDataItem.copyWith(...)` or like so:`instanceOfDataItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DataItemCWProxy get copyWith => _$DataItemCWProxyImpl(this);
}

abstract class _$ResponseCWProxy {
  Response meta(Meta meta);

  Response data(List<DataItem> data);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Response(...).copyWith(id: 12, name: "My name")
  /// ````
  Response call({
    Meta meta,
    List<DataItem> data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfResponse.copyWith.fieldName(...)`
class _$ResponseCWProxyImpl implements _$ResponseCWProxy {
  const _$ResponseCWProxyImpl(this._value);

  final Response _value;

  @override
  Response meta(Meta meta) => this(meta: meta);

  @override
  Response data(List<DataItem> data) => this(data: data);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Response(...).copyWith(id: 12, name: "My name")
  /// ````
  Response call({
    Object? meta = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return Response(
      meta: meta == const $CopyWithPlaceholder()
          ? _value.meta
          // ignore: cast_nullable_to_non_nullable
          : meta as Meta,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as List<DataItem>,
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

Generics _$GenericsFromJson(Map<String, dynamic> json) => Generics(
      response: json['response'] == null
          ? Response.emptyInstance()
          : Response.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenericsToJson(Generics instance) => <String, dynamic>{
      'response': instance.response.toJson(),
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

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      pagination: json['pagination'] == null
          ? Pagination.emptyInstance()
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'pagination': instance.pagination.toJson(),
    };

Tags _$TagsFromJson(Map<String, dynamic> json) => Tags(
      frontend: (json['frontend'] as num?)?.toInt() ?? 0,
      backend: (json['backend'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$TagsToJson(Tags instance) => <String, dynamic>{
      'frontend': instance.frontend,
      'backend': instance.backend,
    };

Attributes _$AttributesFromJson(Map<String, dynamic> json) => Attributes(
      scores: (json['scores'] as List<dynamic>?)
              ?.map((e) => (e as num?)?.toDouble())
              .toList() ??
          [],
      tags: json['tags'] == null
          ? Tags.emptyInstance()
          : Tags.fromJson(json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'scores': instance.scores,
      'tags': instance.tags.toJson(),
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as String? ?? '',
      attributes: json['attributes'] == null
          ? Attributes.emptyInstance()
          : Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes.toJson(),
    };

DataItem _$DataItemFromJson(Map<String, dynamic> json) => DataItem(
      id: json['id'] as String? ?? '',
      attributes: json['attributes'] == null
          ? Attributes.emptyInstance()
          : Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataItemToJson(DataItem instance) => <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes.toJson(),
    };

Response _$ResponseFromJson(Map<String, dynamic> json) => Response(
      meta: json['meta'] == null
          ? Meta.emptyInstance()
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => DataItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ResponseToJson(Response instance) => <String, dynamic>{
      'meta': instance.meta.toJson(),
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
