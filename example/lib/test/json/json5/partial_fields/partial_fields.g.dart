// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partial_fields.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

extension _$PartialFieldsAutoequal on PartialFields {
  List<Object?> get _$props => [a, b, c, d, f];
}

extension _$AItemAutoequal on AItem {
  List<Object?> get _$props => [id, name, email, phone];
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PartialFieldsCWProxy {
  PartialFields a(List<AItem> a);

  PartialFields b(List<String?> b);

  PartialFields c(List<double?> c);

  PartialFields d(List<int?> d);

  PartialFields f(List<int> f);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PartialFields(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PartialFields(...).copyWith(id: 12, name: "My name")
  /// ````
  PartialFields call({
    List<AItem> a,
    List<String?> b,
    List<double?> c,
    List<int?> d,
    List<int> f,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPartialFields.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPartialFields.copyWith.fieldName(...)`
class _$PartialFieldsCWProxyImpl implements _$PartialFieldsCWProxy {
  const _$PartialFieldsCWProxyImpl(this._value);

  final PartialFields _value;

  @override
  PartialFields a(List<AItem> a) => this(a: a);

  @override
  PartialFields b(List<String?> b) => this(b: b);

  @override
  PartialFields c(List<double?> c) => this(c: c);

  @override
  PartialFields d(List<int?> d) => this(d: d);

  @override
  PartialFields f(List<int> f) => this(f: f);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PartialFields(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PartialFields(...).copyWith(id: 12, name: "My name")
  /// ````
  PartialFields call({
    Object? a = const $CopyWithPlaceholder(),
    Object? b = const $CopyWithPlaceholder(),
    Object? c = const $CopyWithPlaceholder(),
    Object? d = const $CopyWithPlaceholder(),
    Object? f = const $CopyWithPlaceholder(),
  }) {
    return PartialFields(
      a: a == const $CopyWithPlaceholder()
          ? _value.a
          // ignore: cast_nullable_to_non_nullable
          : a as List<AItem>,
      b: b == const $CopyWithPlaceholder()
          ? _value.b
          // ignore: cast_nullable_to_non_nullable
          : b as List<String?>,
      c: c == const $CopyWithPlaceholder()
          ? _value.c
          // ignore: cast_nullable_to_non_nullable
          : c as List<double?>,
      d: d == const $CopyWithPlaceholder()
          ? _value.d
          // ignore: cast_nullable_to_non_nullable
          : d as List<int?>,
      f: f == const $CopyWithPlaceholder()
          ? _value.f
          // ignore: cast_nullable_to_non_nullable
          : f as List<int>,
    );
  }
}

extension $PartialFieldsCopyWith on PartialFields {
  /// Returns a callable class that can be used as follows: `instanceOfPartialFields.copyWith(...)` or like so:`instanceOfPartialFields.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PartialFieldsCWProxy get copyWith => _$PartialFieldsCWProxyImpl(this);
}

abstract class _$AItemCWProxy {
  AItem id(int id);

  AItem name(String name);

  AItem email(String? email);

  AItem phone(String? phone);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AItem(...).copyWith(id: 12, name: "My name")
  /// ````
  AItem call({
    int id,
    String name,
    String? email,
    String? phone,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAItem.copyWith.fieldName(...)`
class _$AItemCWProxyImpl implements _$AItemCWProxy {
  const _$AItemCWProxyImpl(this._value);

  final AItem _value;

  @override
  AItem id(int id) => this(id: id);

  @override
  AItem name(String name) => this(name: name);

  @override
  AItem email(String? email) => this(email: email);

  @override
  AItem phone(String? phone) => this(phone: phone);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AItem(...).copyWith(id: 12, name: "My name")
  /// ````
  AItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? phone = const $CopyWithPlaceholder(),
  }) {
    return AItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String?,
      phone: phone == const $CopyWithPlaceholder()
          ? _value.phone
          // ignore: cast_nullable_to_non_nullable
          : phone as String?,
    );
  }
}

extension $AItemCopyWith on AItem {
  /// Returns a callable class that can be used as follows: `instanceOfAItem.copyWith(...)` or like so:`instanceOfAItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AItemCWProxy get copyWith => _$AItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartialFields _$PartialFieldsFromJson(Map<String, dynamic> json) =>
    PartialFields(
      a: (json['a'] as List<dynamic>?)
              ?.map((e) => AItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      b: (json['b'] as List<dynamic>?)?.map((e) => e as String?).toList() ?? [],
      c: (json['c'] as List<dynamic>?)
              ?.map((e) => (e as num?)?.toDouble())
              .toList() ??
          [],
      d: (json['d'] as List<dynamic>?)
              ?.map((e) => (e as num?)?.toInt())
              .toList() ??
          [],
      f: (json['f'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          [],
    );

Map<String, dynamic> _$PartialFieldsToJson(PartialFields instance) =>
    <String, dynamic>{
      'a': instance.a.map((e) => e.toJson()).toList(),
      'b': instance.b,
      'c': instance.c,
      'd': instance.d,
      'f': instance.f,
    };

AItem _$AItemFromJson(Map<String, dynamic> json) => AItem(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$AItemToJson(AItem instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
    };
