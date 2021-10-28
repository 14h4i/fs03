import 'package:fs03/models/picture_model.dart';
import 'package:fs03/widgets/status_widget.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class User {
  final Gender? gender;
  final String? name;
  final DateTime? dob;
  final DateTime? registered;
  final String? phone;
  final Status? status;
  final Picture? picture;

  User({
    this.gender,
    this.name,
    this.dob,
    this.registered,
    this.phone,
    this.status,
    this.picture,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

enum Gender {
  male,
  female,
  other,
}
