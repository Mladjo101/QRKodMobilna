// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_predavanje_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterPredavanjeModel _$$_RegisterPredavanjeModelFromJson(
        Map<String, dynamic> json) =>
    _$_RegisterPredavanjeModel(
      predavanjeId: json['predavanjeId'] as String?,
      korisnikId: json['korisnikId'] as String?,
      imePrezime: json['imePrezime'] == null
          ? null
          : DateTime.parse(json['imePrezime'] as String),
    );

Map<String, dynamic> _$$_RegisterPredavanjeModelToJson(
        _$_RegisterPredavanjeModel instance) =>
    <String, dynamic>{
      'predavanjeId': instance.predavanjeId,
      'korisnikId': instance.korisnikId,
      'imePrezime': instance.imePrezime?.toIso8601String(),
    };
