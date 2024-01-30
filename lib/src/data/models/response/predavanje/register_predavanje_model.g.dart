// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_predavanje_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterPredavanjeModelImpl _$$RegisterPredavanjeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterPredavanjeModelImpl(
      predavanjeId: json['predavanjeId'] as String?,
      korisnikId: json['korisnikId'] as String?,
      imePrezime: json['imePrezime'] == null
          ? null
          : DateTime.parse(json['imePrezime'] as String),
    );

Map<String, dynamic> _$$RegisterPredavanjeModelImplToJson(
        _$RegisterPredavanjeModelImpl instance) =>
    <String, dynamic>{
      'predavanjeId': instance.predavanjeId,
      'korisnikId': instance.korisnikId,
      'imePrezime': instance.imePrezime?.toIso8601String(),
    };
