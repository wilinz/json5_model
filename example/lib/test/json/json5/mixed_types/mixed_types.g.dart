// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mixed_types.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

extension _$MixedTypesAutoequal on MixedTypes {
  List<Object?> get _$props => [data];
}

extension _$DataAutoequal on Data {
  List<Object?> get _$props => [value];
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MixedTypesCWProxy {
  MixedTypes data(List<int?> data);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MixedTypes(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MixedTypes(...).copyWith(id: 12, name: "My name")
  /// ````
  MixedTypes call({
    List<int?> data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMixedTypes.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMixedTypes.copyWith.fieldName(...)`
class _$MixedTypesCWProxyImpl implements _$MixedTypesCWProxy {
  const _$MixedTypesCWProxyImpl(this._value);

  final MixedTypes _value;

  @override
  MixedTypes data(List<int?> data) => this(data: data);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MixedTypes(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MixedTypes(...).copyWith(id: 12, name: "My name")
  /// ````
  MixedTypes call({
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return MixedTypes(
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as List<int?>,
    );
  }
}

extension $MixedTypesCopyWith on MixedTypes {
  /// Returns a callable class that can be used as follows: `instanceOfMixedTypes.copyWith(...)` or like so:`instanceOfMixedTypes.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MixedTypesCWProxy get copyWith => _$MixedTypesCWProxyImpl(this);
}

abstract class _$DataCWProxy {
  Data value(double value);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Data(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Data(...).copyWith(id: 12, name: "My name")
  /// ````
  Data call({
    double value,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfData.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfData.copyWith.fieldName(...)`
class _$DataCWProxyImpl implements _$DataCWProxy {
  const _$DataCWProxyImpl(this._value);

  final Data _value;

  @override
  Data value(double value) => this(value: value);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Data(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Data(...).copyWith(id: 12, name: "My name")
  /// ````
  Data call({
    Object? value = const $CopyWithPlaceholder(),
  }) {
    return Data(
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as double,
    );
  }
}

extension $DataCopyWith on Data {
  /// Returns a callable class that can be used as follows: `instanceOfData.copyWith(...)` or like so:`instanceOfData.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DataCWProxy get copyWith => _$DataCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MixedTypes _$MixedTypesFromJson(Map<String, dynamic> json) => MixedTypes(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => (e as num?)?.toInt())
              .toList() ??
          [],
    );

Map<String, dynamic> _$MixedTypesToJson(MixedTypes instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      value: (json['value'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'value': instance.value,
    };
