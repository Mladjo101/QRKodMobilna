// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_list_model_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoleListModelItem _$$_RoleListModelItemFromJson(Map<String, dynamic> json) =>
    _$_RoleListModelItem(
      id: json['id'] as int,
      naziv: json['naziv'] as String,
      vrijednostUAplikaciji: json['vrijednostUAplikaciji'] as int?,
    );

Map<String, dynamic> _$$_RoleListModelItemToJson(
        _$_RoleListModelItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'naziv': instance.naziv,
      'vrijednostUAplikaciji': instance.vrijednostUAplikaciji,
    };
