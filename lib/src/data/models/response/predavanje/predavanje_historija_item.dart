import 'package:freezed_annotation/freezed_annotation.dart';

import '../predavanje/predavanje_in_db_model.dart';

part 'predavanje_historija_item.freezed.dart';
part 'predavanje_historija_item.g.dart';

@freezed
class PredavanjeHistorijaItem with _$PredavanjeHistorijaItem {
  factory PredavanjeHistorijaItem({
    DateTime? datumPredavanja,
    String? nazivPredmeta,
  }) = _PredavanjeHistorijaItem;

  factory PredavanjeHistorijaItem.fromJson(Map<String, dynamic> json) =>
      _$PredavanjeHistorijaItemFromJson(json);
}
