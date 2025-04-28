import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:autoequal/autoequal.dart';

part 'empty.g.dart';

@Autoequal()
@JsonSerializable(explicitToJson: true)
class Empty with EquatableMixin {

  Empty();

  factory Empty.fromJson(Map<String, dynamic> json) => _$EmptyFromJson(json);
  
  Map<String, dynamic> toJson() => _$EmptyToJson(this);
  
  factory Empty.emptyInstance() => Empty();
  
  @override
  List<Object?> get props => _$props;
}


