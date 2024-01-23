// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoleListModel _$$_RoleListModelFromJson(Map<String, dynamic> json) =>
    _$_RoleListModel(
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      token: json['token'] as String?,
      id: json['id'] as String?,
      imePrezime: json['imePrezime'] as String?,
    );

Map<String, dynamic> _$$_RoleListModelToJson(_$_RoleListModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'token': instance.token,
      'id': instance.id,
      'imePrezime': instance.imePrezime,
    };
