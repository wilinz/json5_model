// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge_cases.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

extension _$EdgeCasesAutoequal on EdgeCases {
  List<Object?> get _$props => [emptyList, nullList, deepNull, polymorphic];
}

extension _$BAutoequal on B {
  List<Object?> get _$props => [c];
}

extension _$DeepNullAutoequal on DeepNull {
  List<Object?> get _$props => [a, b];
}

extension _$PolymorphicAutoequal on Polymorphic {
  List<Object?> get _$props => [type, content];
}

extension _$PolymorphicItemAutoequal on PolymorphicItem {
  List<Object?> get _$props => [type, content, url, width];
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EdgeCasesCWProxy {
  EdgeCases emptyList(List<dynamic> emptyList);

  EdgeCases nullList(dynamic nullList);

  EdgeCases deepNull(DeepNull deepNull);

  EdgeCases polymorphic(List<PolymorphicItem> polymorphic);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EdgeCases(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EdgeCases(...).copyWith(id: 12, name: "My name")
  /// ````
  EdgeCases call({
    List<dynamic> emptyList,
    dynamic nullList,
    DeepNull deepNull,
    List<PolymorphicItem> polymorphic,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEdgeCases.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEdgeCases.copyWith.fieldName(...)`
class _$EdgeCasesCWProxyImpl implements _$EdgeCasesCWProxy {
  const _$EdgeCasesCWProxyImpl(this._value);

  final EdgeCases _value;

  @override
  EdgeCases emptyList(List<dynamic> emptyList) => this(emptyList: emptyList);

  @override
  EdgeCases nullList(dynamic nullList) => this(nullList: nullList);

  @override
  EdgeCases deepNull(DeepNull deepNull) => this(deepNull: deepNull);

  @override
  EdgeCases polymorphic(List<PolymorphicItem> polymorphic) =>
      this(polymorphic: polymorphic);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EdgeCases(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EdgeCases(...).copyWith(id: 12, name: "My name")
  /// ````
  EdgeCases call({
    Object? emptyList = const $CopyWithPlaceholder(),
    Object? nullList = const $CopyWithPlaceholder(),
    Object? deepNull = const $CopyWithPlaceholder(),
    Object? polymorphic = const $CopyWithPlaceholder(),
  }) {
    return EdgeCases(
      emptyList: emptyList == const $CopyWithPlaceholder()
          ? _value.emptyList
          // ignore: cast_nullable_to_non_nullable
          : emptyList as List<dynamic>,
      nullList: nullList == const $CopyWithPlaceholder()
          ? _value.nullList
          // ignore: cast_nullable_to_non_nullable
          : nullList as dynamic,
      deepNull: deepNull == const $CopyWithPlaceholder()
          ? _value.deepNull
          // ignore: cast_nullable_to_non_nullable
          : deepNull as DeepNull,
      polymorphic: polymorphic == const $CopyWithPlaceholder()
          ? _value.polymorphic
          // ignore: cast_nullable_to_non_nullable
          : polymorphic as List<PolymorphicItem>,
    );
  }
}

extension $EdgeCasesCopyWith on EdgeCases {
  /// Returns a callable class that can be used as follows: `instanceOfEdgeCases.copyWith(...)` or like so:`instanceOfEdgeCases.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EdgeCasesCWProxy get copyWith => _$EdgeCasesCWProxyImpl(this);
}

abstract class _$BCWProxy {
  B c(dynamic c);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `B(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// B(...).copyWith(id: 12, name: "My name")
  /// ````
  B call({
    dynamic c,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfB.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfB.copyWith.fieldName(...)`
class _$BCWProxyImpl implements _$BCWProxy {
  const _$BCWProxyImpl(this._value);

  final B _value;

  @override
  B c(dynamic c) => this(c: c);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `B(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// B(...).copyWith(id: 12, name: "My name")
  /// ````
  B call({
    Object? c = const $CopyWithPlaceholder(),
  }) {
    return B(
      c: c == const $CopyWithPlaceholder()
          ? _value.c
          // ignore: cast_nullable_to_non_nullable
          : c as dynamic,
    );
  }
}

extension $BCopyWith on B {
  /// Returns a callable class that can be used as follows: `instanceOfB.copyWith(...)` or like so:`instanceOfB.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BCWProxy get copyWith => _$BCWProxyImpl(this);
}

abstract class _$DeepNullCWProxy {
  DeepNull a(dynamic a);

  DeepNull b(B b);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DeepNull(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DeepNull(...).copyWith(id: 12, name: "My name")
  /// ````
  DeepNull call({
    dynamic a,
    B b,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDeepNull.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDeepNull.copyWith.fieldName(...)`
class _$DeepNullCWProxyImpl implements _$DeepNullCWProxy {
  const _$DeepNullCWProxyImpl(this._value);

  final DeepNull _value;

  @override
  DeepNull a(dynamic a) => this(a: a);

  @override
  DeepNull b(B b) => this(b: b);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DeepNull(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DeepNull(...).copyWith(id: 12, name: "My name")
  /// ````
  DeepNull call({
    Object? a = const $CopyWithPlaceholder(),
    Object? b = const $CopyWithPlaceholder(),
  }) {
    return DeepNull(
      a: a == const $CopyWithPlaceholder()
          ? _value.a
          // ignore: cast_nullable_to_non_nullable
          : a as dynamic,
      b: b == const $CopyWithPlaceholder()
          ? _value.b
          // ignore: cast_nullable_to_non_nullable
          : b as B,
    );
  }
}

extension $DeepNullCopyWith on DeepNull {
  /// Returns a callable class that can be used as follows: `instanceOfDeepNull.copyWith(...)` or like so:`instanceOfDeepNull.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DeepNullCWProxy get copyWith => _$DeepNullCWProxyImpl(this);
}

abstract class _$PolymorphicCWProxy {
  Polymorphic type(String type);

  Polymorphic content(String content);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Polymorphic(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Polymorphic(...).copyWith(id: 12, name: "My name")
  /// ````
  Polymorphic call({
    String type,
    String content,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPolymorphic.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPolymorphic.copyWith.fieldName(...)`
class _$PolymorphicCWProxyImpl implements _$PolymorphicCWProxy {
  const _$PolymorphicCWProxyImpl(this._value);

  final Polymorphic _value;

  @override
  Polymorphic type(String type) => this(type: type);

  @override
  Polymorphic content(String content) => this(content: content);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Polymorphic(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Polymorphic(...).copyWith(id: 12, name: "My name")
  /// ````
  Polymorphic call({
    Object? type = const $CopyWithPlaceholder(),
    Object? content = const $CopyWithPlaceholder(),
  }) {
    return Polymorphic(
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as String,
      content: content == const $CopyWithPlaceholder()
          ? _value.content
          // ignore: cast_nullable_to_non_nullable
          : content as String,
    );
  }
}

extension $PolymorphicCopyWith on Polymorphic {
  /// Returns a callable class that can be used as follows: `instanceOfPolymorphic.copyWith(...)` or like so:`instanceOfPolymorphic.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PolymorphicCWProxy get copyWith => _$PolymorphicCWProxyImpl(this);
}

abstract class _$PolymorphicItemCWProxy {
  PolymorphicItem type(String type);

  PolymorphicItem content(String? content);

  PolymorphicItem url(String? url);

  PolymorphicItem width(int? width);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PolymorphicItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PolymorphicItem(...).copyWith(id: 12, name: "My name")
  /// ````
  PolymorphicItem call({
    String type,
    String? content,
    String? url,
    int? width,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPolymorphicItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPolymorphicItem.copyWith.fieldName(...)`
class _$PolymorphicItemCWProxyImpl implements _$PolymorphicItemCWProxy {
  const _$PolymorphicItemCWProxyImpl(this._value);

  final PolymorphicItem _value;

  @override
  PolymorphicItem type(String type) => this(type: type);

  @override
  PolymorphicItem content(String? content) => this(content: content);

  @override
  PolymorphicItem url(String? url) => this(url: url);

  @override
  PolymorphicItem width(int? width) => this(width: width);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PolymorphicItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PolymorphicItem(...).copyWith(id: 12, name: "My name")
  /// ````
  PolymorphicItem call({
    Object? type = const $CopyWithPlaceholder(),
    Object? content = const $CopyWithPlaceholder(),
    Object? url = const $CopyWithPlaceholder(),
    Object? width = const $CopyWithPlaceholder(),
  }) {
    return PolymorphicItem(
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as String,
      content: content == const $CopyWithPlaceholder()
          ? _value.content
          // ignore: cast_nullable_to_non_nullable
          : content as String?,
      url: url == const $CopyWithPlaceholder()
          ? _value.url
          // ignore: cast_nullable_to_non_nullable
          : url as String?,
      width: width == const $CopyWithPlaceholder()
          ? _value.width
          // ignore: cast_nullable_to_non_nullable
          : width as int?,
    );
  }
}

extension $PolymorphicItemCopyWith on PolymorphicItem {
  /// Returns a callable class that can be used as follows: `instanceOfPolymorphicItem.copyWith(...)` or like so:`instanceOfPolymorphicItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PolymorphicItemCWProxy get copyWith => _$PolymorphicItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EdgeCases _$EdgeCasesFromJson(Map<String, dynamic> json) => EdgeCases(
      emptyList: json['empty_list'] as List<dynamic>? ?? [],
      nullList: json['null_list'],
      deepNull: json['deep_null'] == null
          ? DeepNull.emptyInstance()
          : DeepNull.fromJson(json['deep_null'] as Map<String, dynamic>),
      polymorphic: (json['polymorphic'] as List<dynamic>?)
              ?.map((e) => PolymorphicItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$EdgeCasesToJson(EdgeCases instance) => <String, dynamic>{
      'empty_list': instance.emptyList,
      'null_list': instance.nullList,
      'deep_null': instance.deepNull.toJson(),
      'polymorphic': instance.polymorphic.map((e) => e.toJson()).toList(),
    };

B _$BFromJson(Map<String, dynamic> json) => B(
      c: json['c'],
    );

Map<String, dynamic> _$BToJson(B instance) => <String, dynamic>{
      'c': instance.c,
    };

DeepNull _$DeepNullFromJson(Map<String, dynamic> json) => DeepNull(
      a: json['a'],
      b: json['b'] == null
          ? B.emptyInstance()
          : B.fromJson(json['b'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeepNullToJson(DeepNull instance) => <String, dynamic>{
      'a': instance.a,
      'b': instance.b.toJson(),
    };

Polymorphic _$PolymorphicFromJson(Map<String, dynamic> json) => Polymorphic(
      type: json['type'] as String? ?? '',
      content: json['content'] as String? ?? '',
    );

Map<String, dynamic> _$PolymorphicToJson(Polymorphic instance) =>
    <String, dynamic>{
      'type': instance.type,
      'content': instance.content,
    };

PolymorphicItem _$PolymorphicItemFromJson(Map<String, dynamic> json) =>
    PolymorphicItem(
      type: json['type'] as String? ?? '',
      content: json['content'] as String?,
      url: json['url'] as String?,
      width: (json['width'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PolymorphicItemToJson(PolymorphicItem instance) =>
    <String, dynamic>{
      'type': instance.type,
      'content': instance.content,
      'url': instance.url,
      'width': instance.width,
    };
