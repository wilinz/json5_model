// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_response.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

extension _$ListResponseAutoequal on ListResponse {
  List<Object?> get _$props => [list];
}

extension _$ListXAutoequal on ListX {
  List<Object?> get _$props => [title, content];
}

extension _$ListItemAutoequal on ListItem {
  List<Object?> get _$props => [title, content];
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ListResponseCWProxy {
  ListResponse list(List<ListItem> list);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ListResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ListResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ListResponse call({
    List<ListItem> list,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfListResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfListResponse.copyWith.fieldName(...)`
class _$ListResponseCWProxyImpl implements _$ListResponseCWProxy {
  const _$ListResponseCWProxyImpl(this._value);

  final ListResponse _value;

  @override
  ListResponse list(List<ListItem> list) => this(list: list);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ListResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ListResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ListResponse call({
    Object? list = const $CopyWithPlaceholder(),
  }) {
    return ListResponse(
      list: list == const $CopyWithPlaceholder()
          ? _value.list
          // ignore: cast_nullable_to_non_nullable
          : list as List<ListItem>,
    );
  }
}

extension $ListResponseCopyWith on ListResponse {
  /// Returns a callable class that can be used as follows: `instanceOfListResponse.copyWith(...)` or like so:`instanceOfListResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ListResponseCWProxy get copyWith => _$ListResponseCWProxyImpl(this);
}

abstract class _$ListXCWProxy {
  ListX title(String title);

  ListX content(String content);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ListX(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ListX(...).copyWith(id: 12, name: "My name")
  /// ````
  ListX call({
    String title,
    String content,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfListX.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfListX.copyWith.fieldName(...)`
class _$ListXCWProxyImpl implements _$ListXCWProxy {
  const _$ListXCWProxyImpl(this._value);

  final ListX _value;

  @override
  ListX title(String title) => this(title: title);

  @override
  ListX content(String content) => this(content: content);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ListX(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ListX(...).copyWith(id: 12, name: "My name")
  /// ````
  ListX call({
    Object? title = const $CopyWithPlaceholder(),
    Object? content = const $CopyWithPlaceholder(),
  }) {
    return ListX(
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      content: content == const $CopyWithPlaceholder()
          ? _value.content
          // ignore: cast_nullable_to_non_nullable
          : content as String,
    );
  }
}

extension $ListXCopyWith on ListX {
  /// Returns a callable class that can be used as follows: `instanceOfListX.copyWith(...)` or like so:`instanceOfListX.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ListXCWProxy get copyWith => _$ListXCWProxyImpl(this);
}

abstract class _$ListItemCWProxy {
  ListItem title(String title);

  ListItem content(String content);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ListItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ListItem(...).copyWith(id: 12, name: "My name")
  /// ````
  ListItem call({
    String title,
    String content,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfListItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfListItem.copyWith.fieldName(...)`
class _$ListItemCWProxyImpl implements _$ListItemCWProxy {
  const _$ListItemCWProxyImpl(this._value);

  final ListItem _value;

  @override
  ListItem title(String title) => this(title: title);

  @override
  ListItem content(String content) => this(content: content);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ListItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ListItem(...).copyWith(id: 12, name: "My name")
  /// ````
  ListItem call({
    Object? title = const $CopyWithPlaceholder(),
    Object? content = const $CopyWithPlaceholder(),
  }) {
    return ListItem(
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      content: content == const $CopyWithPlaceholder()
          ? _value.content
          // ignore: cast_nullable_to_non_nullable
          : content as String,
    );
  }
}

extension $ListItemCopyWith on ListItem {
  /// Returns a callable class that can be used as follows: `instanceOfListItem.copyWith(...)` or like so:`instanceOfListItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ListItemCWProxy get copyWith => _$ListItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListResponse _$ListResponseFromJson(Map<String, dynamic> json) => ListResponse(
      list: (json['list'] as List<dynamic>?)
              ?.map((e) => ListItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ListResponseToJson(ListResponse instance) =>
    <String, dynamic>{
      'list': instance.list.map((e) => e.toJson()).toList(),
    };

ListX _$ListXFromJson(Map<String, dynamic> json) => ListX(
      title: json['title'] as String? ?? '',
      content: json['content'] as String? ?? '',
    );

Map<String, dynamic> _$ListXToJson(ListX instance) => <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
    };

ListItem _$ListItemFromJson(Map<String, dynamic> json) => ListItem(
      title: json['title'] as String? ?? '',
      content: json['content'] as String? ?? '',
    );

Map<String, dynamic> _$ListItemToJson(ListItem instance) => <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
    };
