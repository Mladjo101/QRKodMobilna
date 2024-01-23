// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'predavanje_historija_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PredavanjeHistorijaItem _$$_PredavanjeHistorijaItemFromJson(
        Map<String, dynamic> json) =>
    _$_PredavanjeHistorijaItem(
      datumPredavanja: json['datumPredavanja'] == null
          ? null
          : DateTime.parse(json['datumPredavanja'] as String),
      nazivPredmeta: json['nazivPredmeta'] as String?,
    );

Map<String, dynamic> _$$_PredavanjeHistorijaItemToJson(
        _$_PredavanjeHistorijaItem instance) =>
    <String, dynamic>{
      'datumPredavanja': instance.datumPredavanja?.toIso8601String(),
      'nazivPredmeta': instance.nazivPredmeta,
    };
