// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'predavanje_in_db_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PredavanjeInDBModel _$$_PredavanjeInDBModelFromJson(
        Map<String, dynamic> json) =>
    _$_PredavanjeInDBModel(
      id: json['id'] as String?,
      predavanjeId: json['predavanjeId'] as String?,
      korisnikId: json['korisnikId'] as String?,
      imePrezime: json['imePrezime'] == null
          ? null
          : DateTime.parse(json['imePrezime'] as String),
      nazivPredavanja: json['nazivPredavanja'] as String?,
    );

Map<String, dynamic> _$$_PredavanjeInDBModelToJson(
        _$_PredavanjeInDBModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'predavanjeId': instance.predavanjeId,
      'korisnikId': instance.korisnikId,
      'imePrezime': instance.imePrezime?.toIso8601String(),
      'nazivPredavanja': instance.nazivPredavanja,
    };
