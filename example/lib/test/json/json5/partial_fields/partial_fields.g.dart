// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partial_fields.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

extension _$PartialFieldsAutoequal on PartialFields {
  List<Object?> get _$props => [id, name, email];
}

extension _$PartialFieldsItemAutoequal on PartialFieldsItem {
  List<Object?> get _$props => [id, name, email, phone];
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PartialFieldsCWProxy {
  PartialFields id(int id);

  PartialFields name(String name);

  PartialFields email(String email);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PartialFields(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PartialFields(...).copyWith(id: 12, name: "My name")
  /// ````
  PartialFields call({
    int id,
    String name,
    String email,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPartialFields.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPartialFields.copyWith.fieldName(...)`
class _$PartialFieldsCWProxyImpl implements _$PartialFieldsCWProxy {
  const _$PartialFieldsCWProxyImpl(this._value);

  final PartialFields _value;

  @override
  PartialFields id(int id) => this(id: id);

  @override
  PartialFields name(String name) => this(name: name);

  @override
  PartialFields email(String email) => this(email: email);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PartialFields(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PartialFields(...).copyWith(id: 12, name: "My name")
  /// ````
  PartialFields call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
  }) {
    return PartialFields(
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
          : email as String,
    );
  }
}

extension $PartialFieldsCopyWith on PartialFields {
  /// Returns a callable class that can be used as follows: `instanceOfPartialFields.copyWith(...)` or like so:`instanceOfPartialFields.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PartialFieldsCWProxy get copyWith => _$PartialFieldsCWProxyImpl(this);
}

abstract class _$PartialFieldsItemCWProxy {
  PartialFieldsItem id(int id);

  PartialFieldsItem name(String name);

  PartialFieldsItem email(String? email);

  PartialFieldsItem phone(String? phone);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PartialFieldsItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PartialFieldsItem(...).copyWith(id: 12, name: "My name")
  /// ````
  PartialFieldsItem call({
    int id,
    String name,
    String? email,
    String? phone,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPartialFieldsItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPartialFieldsItem.copyWith.fieldName(...)`
class _$PartialFieldsItemCWProxyImpl implements _$PartialFieldsItemCWProxy {
  const _$PartialFieldsItemCWProxyImpl(this._value);

  final PartialFieldsItem _value;

  @override
  PartialFieldsItem id(int id) => this(id: id);

  @override
  PartialFieldsItem name(String name) => this(name: name);

  @override
  PartialFieldsItem email(String? email) => this(email: email);

  @override
  PartialFieldsItem phone(String? phone) => this(phone: phone);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PartialFieldsItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PartialFieldsItem(...).copyWith(id: 12, name: "My name")
  /// ````
  PartialFieldsItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? phone = const $CopyWithPlaceholder(),
  }) {
    return PartialFieldsItem(
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

extension $PartialFieldsItemCopyWith on PartialFieldsItem {
  /// Returns a callable class that can be used as follows: `instanceOfPartialFieldsItem.copyWith(...)` or like so:`instanceOfPartialFieldsItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PartialFieldsItemCWProxy get copyWith =>
      _$PartialFieldsItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartialFields _$PartialFieldsFromJson(Map<String, dynamic> json) =>
    PartialFields(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
    );

Map<String, dynamic> _$PartialFieldsToJson(PartialFields instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
    };

PartialFieldsItem _$PartialFieldsItemFromJson(Map<String, dynamic> json) =>
    PartialFieldsItem(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$PartialFieldsItemToJson(PartialFieldsItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
    };
