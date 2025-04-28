// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyword_conflict.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

extension _$KeywordConflictAutoequal on KeywordConflict {
  List<Object?> get _$props => [classX, interfaceX, list, map, future];
}

extension _$MapXAutoequal on MapX {
  List<Object?> get _$props => [key];
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$KeywordConflictCWProxy {
  KeywordConflict classX(String classX);

  KeywordConflict interfaceX(String interfaceX);

  KeywordConflict list(List<String> list);

  KeywordConflict map(MapX map);

  KeywordConflict future(String future);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `KeywordConflict(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// KeywordConflict(...).copyWith(id: 12, name: "My name")
  /// ````
  KeywordConflict call({
    String classX,
    String interfaceX,
    List<String> list,
    MapX map,
    String future,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfKeywordConflict.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfKeywordConflict.copyWith.fieldName(...)`
class _$KeywordConflictCWProxyImpl implements _$KeywordConflictCWProxy {
  const _$KeywordConflictCWProxyImpl(this._value);

  final KeywordConflict _value;

  @override
  KeywordConflict classX(String classX) => this(classX: classX);

  @override
  KeywordConflict interfaceX(String interfaceX) => this(interfaceX: interfaceX);

  @override
  KeywordConflict list(List<String> list) => this(list: list);

  @override
  KeywordConflict map(MapX map) => this(map: map);

  @override
  KeywordConflict future(String future) => this(future: future);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `KeywordConflict(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// KeywordConflict(...).copyWith(id: 12, name: "My name")
  /// ````
  KeywordConflict call({
    Object? classX = const $CopyWithPlaceholder(),
    Object? interfaceX = const $CopyWithPlaceholder(),
    Object? list = const $CopyWithPlaceholder(),
    Object? map = const $CopyWithPlaceholder(),
    Object? future = const $CopyWithPlaceholder(),
  }) {
    return KeywordConflict(
      classX: classX == const $CopyWithPlaceholder()
          ? _value.classX
          // ignore: cast_nullable_to_non_nullable
          : classX as String,
      interfaceX: interfaceX == const $CopyWithPlaceholder()
          ? _value.interfaceX
          // ignore: cast_nullable_to_non_nullable
          : interfaceX as String,
      list: list == const $CopyWithPlaceholder()
          ? _value.list
          // ignore: cast_nullable_to_non_nullable
          : list as List<String>,
      map: map == const $CopyWithPlaceholder()
          ? _value.map
          // ignore: cast_nullable_to_non_nullable
          : map as MapX,
      future: future == const $CopyWithPlaceholder()
          ? _value.future
          // ignore: cast_nullable_to_non_nullable
          : future as String,
    );
  }
}

extension $KeywordConflictCopyWith on KeywordConflict {
  /// Returns a callable class that can be used as follows: `instanceOfKeywordConflict.copyWith(...)` or like so:`instanceOfKeywordConflict.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$KeywordConflictCWProxy get copyWith => _$KeywordConflictCWProxyImpl(this);
}

abstract class _$MapXCWProxy {
  MapX key(String key);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MapX(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MapX(...).copyWith(id: 12, name: "My name")
  /// ````
  MapX call({
    String key,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMapX.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMapX.copyWith.fieldName(...)`
class _$MapXCWProxyImpl implements _$MapXCWProxy {
  const _$MapXCWProxyImpl(this._value);

  final MapX _value;

  @override
  MapX key(String key) => this(key: key);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MapX(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MapX(...).copyWith(id: 12, name: "My name")
  /// ````
  MapX call({
    Object? key = const $CopyWithPlaceholder(),
  }) {
    return MapX(
      key: key == const $CopyWithPlaceholder()
          ? _value.key
          // ignore: cast_nullable_to_non_nullable
          : key as String,
    );
  }
}

extension $MapXCopyWith on MapX {
  /// Returns a callable class that can be used as follows: `instanceOfMapX.copyWith(...)` or like so:`instanceOfMapX.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MapXCWProxy get copyWith => _$MapXCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KeywordConflict _$KeywordConflictFromJson(Map<String, dynamic> json) =>
    KeywordConflict(
      classX: json['class'] as String? ?? '',
      interfaceX: json['interface'] as String? ?? '',
      list:
          (json['list'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      map: json['map'] == null
          ? MapX.emptyInstance()
          : MapX.fromJson(json['map'] as Map<String, dynamic>),
      future: json['future'] as String? ?? '',
    );

Map<String, dynamic> _$KeywordConflictToJson(KeywordConflict instance) =>
    <String, dynamic>{
      'class': instance.classX,
      'interface': instance.interfaceX,
      'list': instance.list,
      'map': instance.map.toJson(),
      'future': instance.future,
    };

MapX _$MapXFromJson(Map<String, dynamic> json) => MapX(
      key: json['key'] as String? ?? '',
    );

Map<String, dynamic> _$MapXToJson(MapX instance) => <String, dynamic>{
      'key': instance.key,
    };
