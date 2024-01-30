// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      lastName: json['lastName'] as String?,
      password: json['password'] as String?,
      role: json['role'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      id: json['id'] as String?,
      firstName: json['firstName'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'lastName': instance.lastName,
      'password': instance.password,
      'role': instance.role,
      'dateOfBirth': instance.dateOfBirth,
      'id': instance.id,
      'firstName': instance.firstName,
      'email': instance.email,
    };
