// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'predavanje_historija_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PredavanjeHistorijaItemImpl _$$PredavanjeHistorijaItemImplFromJson(
        Map<String, dynamic> json) =>
    _$PredavanjeHistorijaItemImpl(
      datumPredavanja: json['datumPredavanja'] == null
          ? null
          : DateTime.parse(json['datumPredavanja'] as String),
      nazivPredmeta: json['nazivPredmeta'] as String?,
    );

Map<String, dynamic> _$$PredavanjeHistorijaItemImplToJson(
        _$PredavanjeHistorijaItemImpl instance) =>
    <String, dynamic>{
      'datumPredavanja': instance.datumPredavanja?.toIso8601String(),
      'nazivPredmeta': instance.nazivPredmeta,
    };
