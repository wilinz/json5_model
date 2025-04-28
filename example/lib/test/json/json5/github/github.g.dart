// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github.dart';

// **************************************************************************
// AutoequalGenerator
// **************************************************************************

extension _$GithubAutoequal on Github {
  List<Object?> get _$props => [
        id,
        nodeId,
        owner,
        private,
        topics,
        permissions,
        securityAndAnalysis,
      ];
}

extension _$OwnerAutoequal on Owner {
  List<Object?> get _$props => [login];
}

extension _$PermissionsAutoequal on Permissions {
  List<Object?> get _$props => [admin, push, pull];
}

extension _$AdvancedSecurityAutoequal on AdvancedSecurity {
  List<Object?> get _$props => [status];
}

extension _$SecretScanningAutoequal on SecretScanning {
  List<Object?> get _$props => [status];
}

extension _$SecretScanningPushProtectionAutoequal
    on SecretScanningPushProtection {
  List<Object?> get _$props => [status];
}

extension _$SecurityAndAnalysisAutoequal on SecurityAndAnalysis {
  List<Object?> get _$props => [
        advancedSecurity,
        secretScanning,
        secretScanningPushProtection,
      ];
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GithubCWProxy {
  Github id(int id);

  Github nodeId(String nodeId);

  Github owner(Owner owner);

  Github private(bool private);

  Github topics(List<String> topics);

  Github permissions(Permissions permissions);

  Github securityAndAnalysis(SecurityAndAnalysis securityAndAnalysis);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Github(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Github(...).copyWith(id: 12, name: "My name")
  /// ````
  Github call({
    int id,
    String nodeId,
    Owner owner,
    bool private,
    List<String> topics,
    Permissions permissions,
    SecurityAndAnalysis securityAndAnalysis,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGithub.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfGithub.copyWith.fieldName(...)`
class _$GithubCWProxyImpl implements _$GithubCWProxy {
  const _$GithubCWProxyImpl(this._value);

  final Github _value;

  @override
  Github id(int id) => this(id: id);

  @override
  Github nodeId(String nodeId) => this(nodeId: nodeId);

  @override
  Github owner(Owner owner) => this(owner: owner);

  @override
  Github private(bool private) => this(private: private);

  @override
  Github topics(List<String> topics) => this(topics: topics);

  @override
  Github permissions(Permissions permissions) => this(permissions: permissions);

  @override
  Github securityAndAnalysis(SecurityAndAnalysis securityAndAnalysis) =>
      this(securityAndAnalysis: securityAndAnalysis);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Github(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Github(...).copyWith(id: 12, name: "My name")
  /// ````
  Github call({
    Object? id = const $CopyWithPlaceholder(),
    Object? nodeId = const $CopyWithPlaceholder(),
    Object? owner = const $CopyWithPlaceholder(),
    Object? private = const $CopyWithPlaceholder(),
    Object? topics = const $CopyWithPlaceholder(),
    Object? permissions = const $CopyWithPlaceholder(),
    Object? securityAndAnalysis = const $CopyWithPlaceholder(),
  }) {
    return Github(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      nodeId: nodeId == const $CopyWithPlaceholder()
          ? _value.nodeId
          // ignore: cast_nullable_to_non_nullable
          : nodeId as String,
      owner: owner == const $CopyWithPlaceholder()
          ? _value.owner
          // ignore: cast_nullable_to_non_nullable
          : owner as Owner,
      private: private == const $CopyWithPlaceholder()
          ? _value.private
          // ignore: cast_nullable_to_non_nullable
          : private as bool,
      topics: topics == const $CopyWithPlaceholder()
          ? _value.topics
          // ignore: cast_nullable_to_non_nullable
          : topics as List<String>,
      permissions: permissions == const $CopyWithPlaceholder()
          ? _value.permissions
          // ignore: cast_nullable_to_non_nullable
          : permissions as Permissions,
      securityAndAnalysis: securityAndAnalysis == const $CopyWithPlaceholder()
          ? _value.securityAndAnalysis
          // ignore: cast_nullable_to_non_nullable
          : securityAndAnalysis as SecurityAndAnalysis,
    );
  }
}

extension $GithubCopyWith on Github {
  /// Returns a callable class that can be used as follows: `instanceOfGithub.copyWith(...)` or like so:`instanceOfGithub.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$GithubCWProxy get copyWith => _$GithubCWProxyImpl(this);
}

abstract class _$OwnerCWProxy {
  Owner login(String login);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Owner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Owner(...).copyWith(id: 12, name: "My name")
  /// ````
  Owner call({
    String login,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOwner.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOwner.copyWith.fieldName(...)`
class _$OwnerCWProxyImpl implements _$OwnerCWProxy {
  const _$OwnerCWProxyImpl(this._value);

  final Owner _value;

  @override
  Owner login(String login) => this(login: login);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Owner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Owner(...).copyWith(id: 12, name: "My name")
  /// ````
  Owner call({
    Object? login = const $CopyWithPlaceholder(),
  }) {
    return Owner(
      login: login == const $CopyWithPlaceholder()
          ? _value.login
          // ignore: cast_nullable_to_non_nullable
          : login as String,
    );
  }
}

extension $OwnerCopyWith on Owner {
  /// Returns a callable class that can be used as follows: `instanceOfOwner.copyWith(...)` or like so:`instanceOfOwner.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OwnerCWProxy get copyWith => _$OwnerCWProxyImpl(this);
}

abstract class _$PermissionsCWProxy {
  Permissions admin(bool admin);

  Permissions push(bool push);

  Permissions pull(bool pull);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Permissions(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Permissions(...).copyWith(id: 12, name: "My name")
  /// ````
  Permissions call({
    bool admin,
    bool push,
    bool pull,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPermissions.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPermissions.copyWith.fieldName(...)`
class _$PermissionsCWProxyImpl implements _$PermissionsCWProxy {
  const _$PermissionsCWProxyImpl(this._value);

  final Permissions _value;

  @override
  Permissions admin(bool admin) => this(admin: admin);

  @override
  Permissions push(bool push) => this(push: push);

  @override
  Permissions pull(bool pull) => this(pull: pull);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Permissions(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Permissions(...).copyWith(id: 12, name: "My name")
  /// ````
  Permissions call({
    Object? admin = const $CopyWithPlaceholder(),
    Object? push = const $CopyWithPlaceholder(),
    Object? pull = const $CopyWithPlaceholder(),
  }) {
    return Permissions(
      admin: admin == const $CopyWithPlaceholder()
          ? _value.admin
          // ignore: cast_nullable_to_non_nullable
          : admin as bool,
      push: push == const $CopyWithPlaceholder()
          ? _value.push
          // ignore: cast_nullable_to_non_nullable
          : push as bool,
      pull: pull == const $CopyWithPlaceholder()
          ? _value.pull
          // ignore: cast_nullable_to_non_nullable
          : pull as bool,
    );
  }
}

extension $PermissionsCopyWith on Permissions {
  /// Returns a callable class that can be used as follows: `instanceOfPermissions.copyWith(...)` or like so:`instanceOfPermissions.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PermissionsCWProxy get copyWith => _$PermissionsCWProxyImpl(this);
}

abstract class _$AdvancedSecurityCWProxy {
  AdvancedSecurity status(String status);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AdvancedSecurity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AdvancedSecurity(...).copyWith(id: 12, name: "My name")
  /// ````
  AdvancedSecurity call({
    String status,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAdvancedSecurity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAdvancedSecurity.copyWith.fieldName(...)`
class _$AdvancedSecurityCWProxyImpl implements _$AdvancedSecurityCWProxy {
  const _$AdvancedSecurityCWProxyImpl(this._value);

  final AdvancedSecurity _value;

  @override
  AdvancedSecurity status(String status) => this(status: status);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AdvancedSecurity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AdvancedSecurity(...).copyWith(id: 12, name: "My name")
  /// ````
  AdvancedSecurity call({
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return AdvancedSecurity(
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as String,
    );
  }
}

extension $AdvancedSecurityCopyWith on AdvancedSecurity {
  /// Returns a callable class that can be used as follows: `instanceOfAdvancedSecurity.copyWith(...)` or like so:`instanceOfAdvancedSecurity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AdvancedSecurityCWProxy get copyWith => _$AdvancedSecurityCWProxyImpl(this);
}

abstract class _$SecretScanningCWProxy {
  SecretScanning status(String status);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SecretScanning(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SecretScanning(...).copyWith(id: 12, name: "My name")
  /// ````
  SecretScanning call({
    String status,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSecretScanning.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSecretScanning.copyWith.fieldName(...)`
class _$SecretScanningCWProxyImpl implements _$SecretScanningCWProxy {
  const _$SecretScanningCWProxyImpl(this._value);

  final SecretScanning _value;

  @override
  SecretScanning status(String status) => this(status: status);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SecretScanning(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SecretScanning(...).copyWith(id: 12, name: "My name")
  /// ````
  SecretScanning call({
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return SecretScanning(
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as String,
    );
  }
}

extension $SecretScanningCopyWith on SecretScanning {
  /// Returns a callable class that can be used as follows: `instanceOfSecretScanning.copyWith(...)` or like so:`instanceOfSecretScanning.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SecretScanningCWProxy get copyWith => _$SecretScanningCWProxyImpl(this);
}

abstract class _$SecretScanningPushProtectionCWProxy {
  SecretScanningPushProtection status(String status);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SecretScanningPushProtection(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SecretScanningPushProtection(...).copyWith(id: 12, name: "My name")
  /// ````
  SecretScanningPushProtection call({
    String status,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSecretScanningPushProtection.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSecretScanningPushProtection.copyWith.fieldName(...)`
class _$SecretScanningPushProtectionCWProxyImpl
    implements _$SecretScanningPushProtectionCWProxy {
  const _$SecretScanningPushProtectionCWProxyImpl(this._value);

  final SecretScanningPushProtection _value;

  @override
  SecretScanningPushProtection status(String status) => this(status: status);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SecretScanningPushProtection(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SecretScanningPushProtection(...).copyWith(id: 12, name: "My name")
  /// ````
  SecretScanningPushProtection call({
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return SecretScanningPushProtection(
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as String,
    );
  }
}

extension $SecretScanningPushProtectionCopyWith
    on SecretScanningPushProtection {
  /// Returns a callable class that can be used as follows: `instanceOfSecretScanningPushProtection.copyWith(...)` or like so:`instanceOfSecretScanningPushProtection.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SecretScanningPushProtectionCWProxy get copyWith =>
      _$SecretScanningPushProtectionCWProxyImpl(this);
}

abstract class _$SecurityAndAnalysisCWProxy {
  SecurityAndAnalysis advancedSecurity(AdvancedSecurity advancedSecurity);

  SecurityAndAnalysis secretScanning(SecretScanning secretScanning);

  SecurityAndAnalysis secretScanningPushProtection(
      SecretScanningPushProtection secretScanningPushProtection);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SecurityAndAnalysis(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SecurityAndAnalysis(...).copyWith(id: 12, name: "My name")
  /// ````
  SecurityAndAnalysis call({
    AdvancedSecurity advancedSecurity,
    SecretScanning secretScanning,
    SecretScanningPushProtection secretScanningPushProtection,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSecurityAndAnalysis.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSecurityAndAnalysis.copyWith.fieldName(...)`
class _$SecurityAndAnalysisCWProxyImpl implements _$SecurityAndAnalysisCWProxy {
  const _$SecurityAndAnalysisCWProxyImpl(this._value);

  final SecurityAndAnalysis _value;

  @override
  SecurityAndAnalysis advancedSecurity(AdvancedSecurity advancedSecurity) =>
      this(advancedSecurity: advancedSecurity);

  @override
  SecurityAndAnalysis secretScanning(SecretScanning secretScanning) =>
      this(secretScanning: secretScanning);

  @override
  SecurityAndAnalysis secretScanningPushProtection(
          SecretScanningPushProtection secretScanningPushProtection) =>
      this(secretScanningPushProtection: secretScanningPushProtection);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SecurityAndAnalysis(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SecurityAndAnalysis(...).copyWith(id: 12, name: "My name")
  /// ````
  SecurityAndAnalysis call({
    Object? advancedSecurity = const $CopyWithPlaceholder(),
    Object? secretScanning = const $CopyWithPlaceholder(),
    Object? secretScanningPushProtection = const $CopyWithPlaceholder(),
  }) {
    return SecurityAndAnalysis(
      advancedSecurity: advancedSecurity == const $CopyWithPlaceholder()
          ? _value.advancedSecurity
          // ignore: cast_nullable_to_non_nullable
          : advancedSecurity as AdvancedSecurity,
      secretScanning: secretScanning == const $CopyWithPlaceholder()
          ? _value.secretScanning
          // ignore: cast_nullable_to_non_nullable
          : secretScanning as SecretScanning,
      secretScanningPushProtection:
          secretScanningPushProtection == const $CopyWithPlaceholder()
              ? _value.secretScanningPushProtection
              // ignore: cast_nullable_to_non_nullable
              : secretScanningPushProtection as SecretScanningPushProtection,
    );
  }
}

extension $SecurityAndAnalysisCopyWith on SecurityAndAnalysis {
  /// Returns a callable class that can be used as follows: `instanceOfSecurityAndAnalysis.copyWith(...)` or like so:`instanceOfSecurityAndAnalysis.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SecurityAndAnalysisCWProxy get copyWith =>
      _$SecurityAndAnalysisCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Github _$GithubFromJson(Map<String, dynamic> json) => Github(
      id: (json['id'] as num?)?.toInt() ?? 0,
      nodeId: json['node_id'] as String? ?? '',
      owner: json['owner'] == null
          ? Owner.emptyInstance()
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      private: json['private'] as bool? ?? false,
      topics: (json['topics'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      permissions: json['permissions'] == null
          ? Permissions.emptyInstance()
          : Permissions.fromJson(json['permissions'] as Map<String, dynamic>),
      securityAndAnalysis: json['security_and_analysis'] == null
          ? SecurityAndAnalysis.emptyInstance()
          : SecurityAndAnalysis.fromJson(
              json['security_and_analysis'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GithubToJson(Github instance) => <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'owner': instance.owner.toJson(),
      'private': instance.private,
      'topics': instance.topics,
      'permissions': instance.permissions.toJson(),
      'security_and_analysis': instance.securityAndAnalysis.toJson(),
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      login: json['login'] as String? ?? '',
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'login': instance.login,
    };

Permissions _$PermissionsFromJson(Map<String, dynamic> json) => Permissions(
      admin: json['admin'] as bool? ?? false,
      push: json['push'] as bool? ?? false,
      pull: json['pull'] as bool? ?? false,
    );

Map<String, dynamic> _$PermissionsToJson(Permissions instance) =>
    <String, dynamic>{
      'admin': instance.admin,
      'push': instance.push,
      'pull': instance.pull,
    };

AdvancedSecurity _$AdvancedSecurityFromJson(Map<String, dynamic> json) =>
    AdvancedSecurity(
      status: json['status'] as String? ?? '',
    );

Map<String, dynamic> _$AdvancedSecurityToJson(AdvancedSecurity instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

SecretScanning _$SecretScanningFromJson(Map<String, dynamic> json) =>
    SecretScanning(
      status: json['status'] as String? ?? '',
    );

Map<String, dynamic> _$SecretScanningToJson(SecretScanning instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

SecretScanningPushProtection _$SecretScanningPushProtectionFromJson(
        Map<String, dynamic> json) =>
    SecretScanningPushProtection(
      status: json['status'] as String? ?? '',
    );

Map<String, dynamic> _$SecretScanningPushProtectionToJson(
        SecretScanningPushProtection instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

SecurityAndAnalysis _$SecurityAndAnalysisFromJson(Map<String, dynamic> json) =>
    SecurityAndAnalysis(
      advancedSecurity: json['advanced_security'] == null
          ? AdvancedSecurity.emptyInstance()
          : AdvancedSecurity.fromJson(
              json['advanced_security'] as Map<String, dynamic>),
      secretScanning: json['secret_scanning'] == null
          ? SecretScanning.emptyInstance()
          : SecretScanning.fromJson(
              json['secret_scanning'] as Map<String, dynamic>),
      secretScanningPushProtection: json['secret_scanning_push_protection'] ==
              null
          ? SecretScanningPushProtection.emptyInstance()
          : SecretScanningPushProtection.fromJson(
              json['secret_scanning_push_protection'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SecurityAndAnalysisToJson(
        SecurityAndAnalysis instance) =>
    <String, dynamic>{
      'advanced_security': instance.advancedSecurity.toJson(),
      'secret_scanning': instance.secretScanning.toJson(),
      'secret_scanning_push_protection':
          instance.secretScanningPushProtection.toJson(),
    };
