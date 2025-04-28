// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nested_object.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

extension _$NestedObjectAutoequal on NestedObject {
  List<Object?> get _$props => [user];
}

extension _$UpdateHistoryAutoequal on UpdateHistory {
  List<Object?> get _$props => [timestamp, operatorX];
}

extension _$UpdateHistoryItemAutoequal on UpdateHistoryItem {
  List<Object?> get _$props => [timestamp, operatorX];
}

extension _$MetadataAutoequal on Metadata {
  List<Object?> get _$props => [createdAt, updateHistory];
}

extension _$UserAutoequal on User {
  List<Object?> get _$props => [name, classX, metadata];
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NestedObjectCWProxy {
  NestedObject user(User user);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NestedObject(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NestedObject(...).copyWith(id: 12, name: "My name")
  /// ````
  NestedObject call({
    User user,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfNestedObject.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfNestedObject.copyWith.fieldName(...)`
class _$NestedObjectCWProxyImpl implements _$NestedObjectCWProxy {
  const _$NestedObjectCWProxyImpl(this._value);

  final NestedObject _value;

  @override
  NestedObject user(User user) => this(user: user);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NestedObject(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NestedObject(...).copyWith(id: 12, name: "My name")
  /// ````
  NestedObject call({
    Object? user = const $CopyWithPlaceholder(),
  }) {
    return NestedObject(
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as User,
    );
  }
}

extension $NestedObjectCopyWith on NestedObject {
  /// Returns a callable class that can be used as follows: `instanceOfNestedObject.copyWith(...)` or like so:`instanceOfNestedObject.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$NestedObjectCWProxy get copyWith => _$NestedObjectCWProxyImpl(this);
}

abstract class _$UpdateHistoryCWProxy {
  UpdateHistory timestamp(String timestamp);

  UpdateHistory operatorX(String operatorX);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateHistory(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateHistory(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateHistory call({
    String timestamp,
    String operatorX,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateHistory.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateHistory.copyWith.fieldName(...)`
class _$UpdateHistoryCWProxyImpl implements _$UpdateHistoryCWProxy {
  const _$UpdateHistoryCWProxyImpl(this._value);

  final UpdateHistory _value;

  @override
  UpdateHistory timestamp(String timestamp) => this(timestamp: timestamp);

  @override
  UpdateHistory operatorX(String operatorX) => this(operatorX: operatorX);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateHistory(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateHistory(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateHistory call({
    Object? timestamp = const $CopyWithPlaceholder(),
    Object? operatorX = const $CopyWithPlaceholder(),
  }) {
    return UpdateHistory(
      timestamp: timestamp == const $CopyWithPlaceholder()
          ? _value.timestamp
          // ignore: cast_nullable_to_non_nullable
          : timestamp as String,
      operatorX: operatorX == const $CopyWithPlaceholder()
          ? _value.operatorX
          // ignore: cast_nullable_to_non_nullable
          : operatorX as String,
    );
  }
}

extension $UpdateHistoryCopyWith on UpdateHistory {
  /// Returns a callable class that can be used as follows: `instanceOfUpdateHistory.copyWith(...)` or like so:`instanceOfUpdateHistory.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateHistoryCWProxy get copyWith => _$UpdateHistoryCWProxyImpl(this);
}

abstract class _$UpdateHistoryItemCWProxy {
  UpdateHistoryItem timestamp(String timestamp);

  UpdateHistoryItem operatorX(String? operatorX);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateHistoryItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateHistoryItem(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateHistoryItem call({
    String timestamp,
    String? operatorX,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateHistoryItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateHistoryItem.copyWith.fieldName(...)`
class _$UpdateHistoryItemCWProxyImpl implements _$UpdateHistoryItemCWProxy {
  const _$UpdateHistoryItemCWProxyImpl(this._value);

  final UpdateHistoryItem _value;

  @override
  UpdateHistoryItem timestamp(String timestamp) => this(timestamp: timestamp);

  @override
  UpdateHistoryItem operatorX(String? operatorX) => this(operatorX: operatorX);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateHistoryItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateHistoryItem(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateHistoryItem call({
    Object? timestamp = const $CopyWithPlaceholder(),
    Object? operatorX = const $CopyWithPlaceholder(),
  }) {
    return UpdateHistoryItem(
      timestamp: timestamp == const $CopyWithPlaceholder()
          ? _value.timestamp
          // ignore: cast_nullable_to_non_nullable
          : timestamp as String,
      operatorX: operatorX == const $CopyWithPlaceholder()
          ? _value.operatorX
          // ignore: cast_nullable_to_non_nullable
          : operatorX as String?,
    );
  }
}

extension $UpdateHistoryItemCopyWith on UpdateHistoryItem {
  /// Returns a callable class that can be used as follows: `instanceOfUpdateHistoryItem.copyWith(...)` or like so:`instanceOfUpdateHistoryItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateHistoryItemCWProxy get copyWith =>
      _$UpdateHistoryItemCWProxyImpl(this);
}

abstract class _$MetadataCWProxy {
  Metadata createdAt(String createdAt);

  Metadata updateHistory(List<UpdateHistoryItem> updateHistory);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Metadata(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Metadata(...).copyWith(id: 12, name: "My name")
  /// ````
  Metadata call({
    String createdAt,
    List<UpdateHistoryItem> updateHistory,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMetadata.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMetadata.copyWith.fieldName(...)`
class _$MetadataCWProxyImpl implements _$MetadataCWProxy {
  const _$MetadataCWProxyImpl(this._value);

  final Metadata _value;

  @override
  Metadata createdAt(String createdAt) => this(createdAt: createdAt);

  @override
  Metadata updateHistory(List<UpdateHistoryItem> updateHistory) =>
      this(updateHistory: updateHistory);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Metadata(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Metadata(...).copyWith(id: 12, name: "My name")
  /// ````
  Metadata call({
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updateHistory = const $CopyWithPlaceholder(),
  }) {
    return Metadata(
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as String,
      updateHistory: updateHistory == const $CopyWithPlaceholder()
          ? _value.updateHistory
          // ignore: cast_nullable_to_non_nullable
          : updateHistory as List<UpdateHistoryItem>,
    );
  }
}

extension $MetadataCopyWith on Metadata {
  /// Returns a callable class that can be used as follows: `instanceOfMetadata.copyWith(...)` or like so:`instanceOfMetadata.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MetadataCWProxy get copyWith => _$MetadataCWProxyImpl(this);
}

abstract class _$UserCWProxy {
  User name(String name);

  User classX(String classX);

  User metadata(Metadata metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `User(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// User(...).copyWith(id: 12, name: "My name")
  /// ````
  User call({
    String name,
    String classX,
    Metadata metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUser.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUser.copyWith.fieldName(...)`
class _$UserCWProxyImpl implements _$UserCWProxy {
  const _$UserCWProxyImpl(this._value);

  final User _value;

  @override
  User name(String name) => this(name: name);

  @override
  User classX(String classX) => this(classX: classX);

  @override
  User metadata(Metadata metadata) => this(metadata: metadata);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `User(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// User(...).copyWith(id: 12, name: "My name")
  /// ````
  User call({
    Object? name = const $CopyWithPlaceholder(),
    Object? classX = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return User(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      classX: classX == const $CopyWithPlaceholder()
          ? _value.classX
          // ignore: cast_nullable_to_non_nullable
          : classX as String,
      metadata: metadata == const $CopyWithPlaceholder()
          ? _value.metadata
          // ignore: cast_nullable_to_non_nullable
          : metadata as Metadata,
    );
  }
}

extension $UserCopyWith on User {
  /// Returns a callable class that can be used as follows: `instanceOfUser.copyWith(...)` or like so:`instanceOfUser.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserCWProxy get copyWith => _$UserCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NestedObject _$NestedObjectFromJson(Map<String, dynamic> json) => NestedObject(
      user: json['user'] == null
          ? User.emptyInstance()
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedObjectToJson(NestedObject instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };

UpdateHistory _$UpdateHistoryFromJson(Map<String, dynamic> json) =>
    UpdateHistory(
      timestamp: json['timestamp'] as String? ?? '',
      operatorX: json['operator'] as String? ?? '',
    );

Map<String, dynamic> _$UpdateHistoryToJson(UpdateHistory instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'operator': instance.operatorX,
    };

UpdateHistoryItem _$UpdateHistoryItemFromJson(Map<String, dynamic> json) =>
    UpdateHistoryItem(
      timestamp: json['timestamp'] as String? ?? '',
      operatorX: json['operator'] as String?,
    );

Map<String, dynamic> _$UpdateHistoryItemToJson(UpdateHistoryItem instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'operator': instance.operatorX,
    };

Metadata _$MetadataFromJson(Map<String, dynamic> json) => Metadata(
      createdAt: json['created_at'] as String? ?? '',
      updateHistory: (json['update_history'] as List<dynamic>?)
              ?.map(
                  (e) => UpdateHistoryItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
      'created_at': instance.createdAt,
      'update_history': instance.updateHistory.map((e) => e.toJson()).toList(),
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      name: json['name'] as String? ?? '',
      classX: json['class'] as String? ?? '',
      metadata: json['metadata'] == null
          ? Metadata.emptyInstance()
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'class': instance.classX,
      'metadata': instance.metadata.toJson(),
    };
