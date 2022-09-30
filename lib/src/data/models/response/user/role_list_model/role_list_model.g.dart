// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoleListModel _$$_RoleListModelFromJson(Map<String, dynamic> json) =>
    _$_RoleListModel(
      items: (json['items'] as List<dynamic>)
          .map((e) => RoleListModelItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RoleListModelToJson(_$_RoleListModel instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
