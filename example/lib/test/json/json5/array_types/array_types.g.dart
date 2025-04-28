// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'array_types.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

extension _$ArrayTypesAutoequal on ArrayTypes {
  List<Object?> get _$props => [numbers, users, mixedList];
}

extension _$UsersAutoequal on Users {
  List<Object?> get _$props => [name, type];
}

extension _$UsersItemAutoequal on UsersItem {
  List<Object?> get _$props => [name, type];
}

extension _$MixedListAutoequal on MixedList {
  List<Object?> get _$props => [value];
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ArrayTypesCWProxy {
  ArrayTypes numbers(List<int> numbers);

  ArrayTypes users(List<UsersItem> users);

  ArrayTypes mixedList(List<int> mixedList);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ArrayTypes(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ArrayTypes(...).copyWith(id: 12, name: "My name")
  /// ````
  ArrayTypes call({
    List<int> numbers,
    List<UsersItem> users,
    List<int> mixedList,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfArrayTypes.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfArrayTypes.copyWith.fieldName(...)`
class _$ArrayTypesCWProxyImpl implements _$ArrayTypesCWProxy {
  const _$ArrayTypesCWProxyImpl(this._value);

  final ArrayTypes _value;

  @override
  ArrayTypes numbers(List<int> numbers) => this(numbers: numbers);

  @override
  ArrayTypes users(List<UsersItem> users) => this(users: users);

  @override
  ArrayTypes mixedList(List<int> mixedList) => this(mixedList: mixedList);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ArrayTypes(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ArrayTypes(...).copyWith(id: 12, name: "My name")
  /// ````
  ArrayTypes call({
    Object? numbers = const $CopyWithPlaceholder(),
    Object? users = const $CopyWithPlaceholder(),
    Object? mixedList = const $CopyWithPlaceholder(),
  }) {
    return ArrayTypes(
      numbers: numbers == const $CopyWithPlaceholder()
          ? _value.numbers
          // ignore: cast_nullable_to_non_nullable
          : numbers as List<int>,
      users: users == const $CopyWithPlaceholder()
          ? _value.users
          // ignore: cast_nullable_to_non_nullable
          : users as List<UsersItem>,
      mixedList: mixedList == const $CopyWithPlaceholder()
          ? _value.mixedList
          // ignore: cast_nullable_to_non_nullable
          : mixedList as List<int>,
    );
  }
}

extension $ArrayTypesCopyWith on ArrayTypes {
  /// Returns a callable class that can be used as follows: `instanceOfArrayTypes.copyWith(...)` or like so:`instanceOfArrayTypes.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ArrayTypesCWProxy get copyWith => _$ArrayTypesCWProxyImpl(this);
}

abstract class _$UsersCWProxy {
  Users name(String name);

  Users type(String type);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Users(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Users(...).copyWith(id: 12, name: "My name")
  /// ````
  Users call({
    String name,
    String type,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUsers.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUsers.copyWith.fieldName(...)`
class _$UsersCWProxyImpl implements _$UsersCWProxy {
  const _$UsersCWProxyImpl(this._value);

  final Users _value;

  @override
  Users name(String name) => this(name: name);

  @override
  Users type(String type) => this(type: type);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Users(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Users(...).copyWith(id: 12, name: "My name")
  /// ````
  Users call({
    Object? name = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
  }) {
    return Users(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as String,
    );
  }
}

extension $UsersCopyWith on Users {
  /// Returns a callable class that can be used as follows: `instanceOfUsers.copyWith(...)` or like so:`instanceOfUsers.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UsersCWProxy get copyWith => _$UsersCWProxyImpl(this);
}

abstract class _$UsersItemCWProxy {
  UsersItem name(String name);

  UsersItem type(String type);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UsersItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UsersItem(...).copyWith(id: 12, name: "My name")
  /// ````
  UsersItem call({
    String name,
    String type,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUsersItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUsersItem.copyWith.fieldName(...)`
class _$UsersItemCWProxyImpl implements _$UsersItemCWProxy {
  const _$UsersItemCWProxyImpl(this._value);

  final UsersItem _value;

  @override
  UsersItem name(String name) => this(name: name);

  @override
  UsersItem type(String type) => this(type: type);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UsersItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UsersItem(...).copyWith(id: 12, name: "My name")
  /// ````
  UsersItem call({
    Object? name = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
  }) {
    return UsersItem(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as String,
    );
  }
}

extension $UsersItemCopyWith on UsersItem {
  /// Returns a callable class that can be used as follows: `instanceOfUsersItem.copyWith(...)` or like so:`instanceOfUsersItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UsersItemCWProxy get copyWith => _$UsersItemCWProxyImpl(this);
}

abstract class _$MixedListCWProxy {
  MixedList value(String value);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MixedList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MixedList(...).copyWith(id: 12, name: "My name")
  /// ````
  MixedList call({
    String value,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMixedList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMixedList.copyWith.fieldName(...)`
class _$MixedListCWProxyImpl implements _$MixedListCWProxy {
  const _$MixedListCWProxyImpl(this._value);

  final MixedList _value;

  @override
  MixedList value(String value) => this(value: value);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MixedList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MixedList(...).copyWith(id: 12, name: "My name")
  /// ````
  MixedList call({
    Object? value = const $CopyWithPlaceholder(),
  }) {
    return MixedList(
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as String,
    );
  }
}

extension $MixedListCopyWith on MixedList {
  /// Returns a callable class that can be used as follows: `instanceOfMixedList.copyWith(...)` or like so:`instanceOfMixedList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MixedListCWProxy get copyWith => _$MixedListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArrayTypes _$ArrayTypesFromJson(Map<String, dynamic> json) => ArrayTypes(
      numbers: (json['numbers'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          [],
      users: (json['users'] as List<dynamic>?)
              ?.map((e) => UsersItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      mixedList: (json['mixed_list'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          [],
    );

Map<String, dynamic> _$ArrayTypesToJson(ArrayTypes instance) =>
    <String, dynamic>{
      'numbers': instance.numbers,
      'users': instance.users.map((e) => e.toJson()).toList(),
      'mixed_list': instance.mixedList,
    };

Users _$UsersFromJson(Map<String, dynamic> json) => Users(
      name: json['name'] as String? ?? '',
      type: json['type'] as String? ?? '',
    );

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
    };

UsersItem _$UsersItemFromJson(Map<String, dynamic> json) => UsersItem(
      name: json['name'] as String? ?? '',
      type: json['type'] as String? ?? '',
    );

Map<String, dynamic> _$UsersItemToJson(UsersItem instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
    };

MixedList _$MixedListFromJson(Map<String, dynamic> json) => MixedList(
      value: json['value'] as String? ?? '',
    );

Map<String, dynamic> _$MixedListToJson(MixedList instance) => <String, dynamic>{
      'value': instance.value,
    };
