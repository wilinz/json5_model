import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:autoequal/autoequal.dart';

part 'github.g.dart';

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Github with EquatableMixin {

  Github(
      {required this.id,
      required this.nodeId,
      required this.owner,
      required this.private,
      required this.topics,
      required this.permissions,
      required this.securityAndAnalysis});

  @JsonKey(name: "id", defaultValue: 0)
  final int id;

  @JsonKey(name: "node_id", defaultValue: "")
  final String nodeId;

  @JsonKey(name: "owner", defaultValue: Owner.emptyInstance)
  final Owner owner;

  @JsonKey(name: "private", defaultValue: false)
  final bool private;

  @JsonKey(name: "topics", defaultValue: [])
  final List<String> topics;

  @JsonKey(name: "permissions", defaultValue: Permissions.emptyInstance)
  final Permissions permissions;

  @JsonKey(name: "security_and_analysis", defaultValue: SecurityAndAnalysis.emptyInstance)
  final SecurityAndAnalysis securityAndAnalysis;


  factory Github.fromJson(Map<String, dynamic> json) => _$GithubFromJson(json);
  
  Map<String, dynamic> toJson() => _$GithubToJson(this);
  
  factory Github.emptyInstance() => Github(id: 0, nodeId: "", owner: Owner.emptyInstance(), private: false, topics: [], permissions: Permissions.emptyInstance(), securityAndAnalysis: SecurityAndAnalysis.emptyInstance());
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Owner with EquatableMixin {

  Owner(
      {required this.login});

  @JsonKey(name: "login", defaultValue: "")
  final String login;


  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
  
  Map<String, dynamic> toJson() => _$OwnerToJson(this);
  
  factory Owner.emptyInstance() => Owner(login: "");
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class Permissions with EquatableMixin {

  Permissions(
      {required this.admin,
      required this.push,
      required this.pull});

  @JsonKey(name: "admin", defaultValue: false)
  final bool admin;

  @JsonKey(name: "push", defaultValue: false)
  final bool push;

  @JsonKey(name: "pull", defaultValue: false)
  final bool pull;


  factory Permissions.fromJson(Map<String, dynamic> json) => _$PermissionsFromJson(json);
  
  Map<String, dynamic> toJson() => _$PermissionsToJson(this);
  
  factory Permissions.emptyInstance() => Permissions(admin: false, push: false, pull: false);
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class AdvancedSecurity with EquatableMixin {

  AdvancedSecurity(
      {required this.status});

  @JsonKey(name: "status", defaultValue: "")
  final String status;


  factory AdvancedSecurity.fromJson(Map<String, dynamic> json) => _$AdvancedSecurityFromJson(json);
  
  Map<String, dynamic> toJson() => _$AdvancedSecurityToJson(this);
  
  factory AdvancedSecurity.emptyInstance() => AdvancedSecurity(status: "");
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class SecretScanning with EquatableMixin {

  SecretScanning(
      {required this.status});

  @JsonKey(name: "status", defaultValue: "")
  final String status;


  factory SecretScanning.fromJson(Map<String, dynamic> json) => _$SecretScanningFromJson(json);
  
  Map<String, dynamic> toJson() => _$SecretScanningToJson(this);
  
  factory SecretScanning.emptyInstance() => SecretScanning(status: "");
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class SecretScanningPushProtection with EquatableMixin {

  SecretScanningPushProtection(
      {required this.status});

  @JsonKey(name: "status", defaultValue: "")
  final String status;


  factory SecretScanningPushProtection.fromJson(Map<String, dynamic> json) => _$SecretScanningPushProtectionFromJson(json);
  
  Map<String, dynamic> toJson() => _$SecretScanningPushProtectionToJson(this);
  
  factory SecretScanningPushProtection.emptyInstance() => SecretScanningPushProtection(status: "");
  
  @override
  List<Object?> get props => _$props;
}

@CopyWith()
@Autoequal()
@JsonSerializable(explicitToJson: true)
class SecurityAndAnalysis with EquatableMixin {

  SecurityAndAnalysis(
      {required this.advancedSecurity,
      required this.secretScanning,
      required this.secretScanningPushProtection});

  @JsonKey(name: "advanced_security", defaultValue: AdvancedSecurity.emptyInstance)
  final AdvancedSecurity advancedSecurity;

  @JsonKey(name: "secret_scanning", defaultValue: SecretScanning.emptyInstance)
  final SecretScanning secretScanning;

  @JsonKey(name: "secret_scanning_push_protection", defaultValue: SecretScanningPushProtection.emptyInstance)
  final SecretScanningPushProtection secretScanningPushProtection;


  factory SecurityAndAnalysis.fromJson(Map<String, dynamic> json) => _$SecurityAndAnalysisFromJson(json);
  
  Map<String, dynamic> toJson() => _$SecurityAndAnalysisToJson(this);
  
  factory SecurityAndAnalysis.emptyInstance() => SecurityAndAnalysis(advancedSecurity: AdvancedSecurity.emptyInstance(), secretScanning: SecretScanning.emptyInstance(), secretScanningPushProtection: SecretScanningPushProtection.emptyInstance());
  
  @override
  List<Object?> get props => _$props;
}


