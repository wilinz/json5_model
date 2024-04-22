import 'package:json_annotation/json_annotation.dart';

part 'github.g.dart';

@JsonSerializable(explicitToJson: true)
class Github {

  Github(
      {required this.id,
      required this.nodeId,
      required this.owner,
      required this.private,
      required this.topics,
      required this.permissions,
      required this.securityAndAnalysis});

  @JsonKey(name: "id", defaultValue: 0)
  int id;

  @JsonKey(name: "node_id", defaultValue: "")
  String nodeId;

  @JsonKey(name: "owner", defaultValue: Owner.emptyInstance)
  Owner owner;

  @JsonKey(name: "private", defaultValue: false)
  bool private;

  @JsonKey(name: "topics", defaultValue: [])
  List<String> topics;

  @JsonKey(name: "permissions", defaultValue: Permissions.emptyInstance)
  Permissions permissions;

  @JsonKey(name: "security_and_analysis", defaultValue: SecurityAndAnalysis.emptyInstance)
  SecurityAndAnalysis securityAndAnalysis;


  factory Github.fromJson(Map<String, dynamic> json) => _$GithubFromJson(json);
  
  Map<String, dynamic> toJson() => _$GithubToJson(this);
  
  factory Github.emptyInstance() => Github(id: 0, nodeId: "", owner: Owner.emptyInstance(), private: false, topics: const [], permissions: Permissions.emptyInstance(), securityAndAnalysis: SecurityAndAnalysis.emptyInstance());
}

@JsonSerializable(explicitToJson: true)
class Owner {

  Owner(
      {required this.login});

  @JsonKey(name: "login", defaultValue: "")
  String login;


  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
  
  Map<String, dynamic> toJson() => _$OwnerToJson(this);
  
  factory Owner.emptyInstance() => Owner(login: "");
}

@JsonSerializable(explicitToJson: true)
class Permissions {

  Permissions(
      {required this.admin,
      required this.push,
      required this.pull});

  @JsonKey(name: "admin", defaultValue: false)
  bool admin;

  @JsonKey(name: "push", defaultValue: false)
  bool push;

  @JsonKey(name: "pull", defaultValue: false)
  bool pull;


  factory Permissions.fromJson(Map<String, dynamic> json) => _$PermissionsFromJson(json);
  
  Map<String, dynamic> toJson() => _$PermissionsToJson(this);
  
  factory Permissions.emptyInstance() => Permissions(admin: false, push: false, pull: false);
}

@JsonSerializable(explicitToJson: true)
class AdvancedSecurity {

  AdvancedSecurity(
      {required this.status});

  @JsonKey(name: "status", defaultValue: "")
  String status;


  factory AdvancedSecurity.fromJson(Map<String, dynamic> json) => _$AdvancedSecurityFromJson(json);
  
  Map<String, dynamic> toJson() => _$AdvancedSecurityToJson(this);
  
  factory AdvancedSecurity.emptyInstance() => AdvancedSecurity(status: "");
}

@JsonSerializable(explicitToJson: true)
class SecretScanning {

  SecretScanning(
      {required this.status});

  @JsonKey(name: "status", defaultValue: "")
  String status;


  factory SecretScanning.fromJson(Map<String, dynamic> json) => _$SecretScanningFromJson(json);
  
  Map<String, dynamic> toJson() => _$SecretScanningToJson(this);
  
  factory SecretScanning.emptyInstance() => SecretScanning(status: "");
}

@JsonSerializable(explicitToJson: true)
class SecretScanningPushProtection {

  SecretScanningPushProtection(
      {required this.status});

  @JsonKey(name: "status", defaultValue: "")
  String status;


  factory SecretScanningPushProtection.fromJson(Map<String, dynamic> json) => _$SecretScanningPushProtectionFromJson(json);
  
  Map<String, dynamic> toJson() => _$SecretScanningPushProtectionToJson(this);
  
  factory SecretScanningPushProtection.emptyInstance() => SecretScanningPushProtection(status: "");
}

@JsonSerializable(explicitToJson: true)
class SecurityAndAnalysis {

  SecurityAndAnalysis(
      {required this.advancedSecurity,
      required this.secretScanning,
      required this.secretScanningPushProtection});

  @JsonKey(name: "advanced_security", defaultValue: AdvancedSecurity.emptyInstance)
  AdvancedSecurity advancedSecurity;

  @JsonKey(name: "secret_scanning", defaultValue: SecretScanning.emptyInstance)
  SecretScanning secretScanning;

  @JsonKey(name: "secret_scanning_push_protection", defaultValue: SecretScanningPushProtection.emptyInstance)
  SecretScanningPushProtection secretScanningPushProtection;


  factory SecurityAndAnalysis.fromJson(Map<String, dynamic> json) => _$SecurityAndAnalysisFromJson(json);
  
  Map<String, dynamic> toJson() => _$SecurityAndAnalysisToJson(this);
  
  factory SecurityAndAnalysis.emptyInstance() => SecurityAndAnalysis(advancedSecurity: AdvancedSecurity.emptyInstance(), secretScanning: SecretScanning.emptyInstance(), secretScanningPushProtection: SecretScanningPushProtection.emptyInstance());
}


