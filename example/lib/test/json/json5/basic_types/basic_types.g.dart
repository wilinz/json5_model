// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_types.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

extension _$BasicTypesAutoequal on BasicTypes {
  List<Object?> get _$props => [
        intX,
        doubleX,
        string,
        boolX,
        nullValue,
        list,
        datetime,
      ];
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BasicTypesCWProxy {
  BasicTypes intX(int intX);

  BasicTypes doubleX(double doubleX);

  BasicTypes string(String string);

  BasicTypes boolX(bool boolX);

  BasicTypes nullValue(dynamic nullValue);

  BasicTypes list(List<int> list);

  BasicTypes datetime(String datetime);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BasicTypes(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BasicTypes(...).copyWith(id: 12, name: "My name")
  /// ````
  BasicTypes call({
    int intX,
    double doubleX,
    String string,
    bool boolX,
    dynamic nullValue,
    List<int> list,
    String datetime,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBasicTypes.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBasicTypes.copyWith.fieldName(...)`
class _$BasicTypesCWProxyImpl implements _$BasicTypesCWProxy {
  const _$BasicTypesCWProxyImpl(this._value);

  final BasicTypes _value;

  @override
  BasicTypes intX(int intX) => this(intX: intX);

  @override
  BasicTypes doubleX(double doubleX) => this(doubleX: doubleX);

  @override
  BasicTypes string(String string) => this(string: string);

  @override
  BasicTypes boolX(bool boolX) => this(boolX: boolX);

  @override
  BasicTypes nullValue(dynamic nullValue) => this(nullValue: nullValue);

  @override
  BasicTypes list(List<int> list) => this(list: list);

  @override
  BasicTypes datetime(String datetime) => this(datetime: datetime);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BasicTypes(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BasicTypes(...).copyWith(id: 12, name: "My name")
  /// ````
  BasicTypes call({
    Object? intX = const $CopyWithPlaceholder(),
    Object? doubleX = const $CopyWithPlaceholder(),
    Object? string = const $CopyWithPlaceholder(),
    Object? boolX = const $CopyWithPlaceholder(),
    Object? nullValue = const $CopyWithPlaceholder(),
    Object? list = const $CopyWithPlaceholder(),
    Object? datetime = const $CopyWithPlaceholder(),
  }) {
    return BasicTypes(
      intX: intX == const $CopyWithPlaceholder()
          ? _value.intX
          // ignore: cast_nullable_to_non_nullable
          : intX as int,
      doubleX: doubleX == const $CopyWithPlaceholder()
          ? _value.doubleX
          // ignore: cast_nullable_to_non_nullable
          : doubleX as double,
      string: string == const $CopyWithPlaceholder()
          ? _value.string
          // ignore: cast_nullable_to_non_nullable
          : string as String,
      boolX: boolX == const $CopyWithPlaceholder()
          ? _value.boolX
          // ignore: cast_nullable_to_non_nullable
          : boolX as bool,
      nullValue: nullValue == const $CopyWithPlaceholder()
          ? _value.nullValue
          // ignore: cast_nullable_to_non_nullable
          : nullValue as dynamic,
      list: list == const $CopyWithPlaceholder()
          ? _value.list
          // ignore: cast_nullable_to_non_nullable
          : list as List<int>,
      datetime: datetime == const $CopyWithPlaceholder()
          ? _value.datetime
          // ignore: cast_nullable_to_non_nullable
          : datetime as String,
    );
  }
}

extension $BasicTypesCopyWith on BasicTypes {
  /// Returns a callable class that can be used as follows: `instanceOfBasicTypes.copyWith(...)` or like so:`instanceOfBasicTypes.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BasicTypesCWProxy get copyWith => _$BasicTypesCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasicTypes _$BasicTypesFromJson(Map<String, dynamic> json) => BasicTypes(
      intX: (json['int'] as num?)?.toInt() ?? 0,
      doubleX: (json['double'] as num?)?.toDouble() ?? 0.0,
      string: json['string'] as String? ?? '',
      boolX: json['bool'] as bool? ?? false,
      nullValue: json['null_value'],
      list: (json['list'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          [],
      datetime: json['datetime'] as String? ?? '',
    );

Map<String, dynamic> _$BasicTypesToJson(BasicTypes instance) =>
    <String, dynamic>{
      'int': instance.intX,
      'double': instance.doubleX,
      'string': instance.string,
      'bool': instance.boolX,
      'null_value': instance.nullValue,
      'list': instance.list,
      'datetime': instance.datetime,
    };
