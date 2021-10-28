// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      name: json['name'] as String?,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      registered: json['registered'] == null
          ? null
          : DateTime.parse(json['registered'] as String),
      phone: json['phone'] as String?,
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      picture: json['picture'] == null
          ? null
          : Picture.fromJson(json['picture'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'gender': _$GenderEnumMap[instance.gender],
      'name': instance.name,
      'dob': instance.dob?.toIso8601String(),
      'registered': instance.registered?.toIso8601String(),
      'phone': instance.phone,
      'status': _$StatusEnumMap[instance.status],
      'picture': instance.picture,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};

const _$StatusEnumMap = {
  Status.online: 'online',
  Status.offline: 'offline',
  Status.hasMessage: 'hasMessage',
  Status.private: 'private',
};
