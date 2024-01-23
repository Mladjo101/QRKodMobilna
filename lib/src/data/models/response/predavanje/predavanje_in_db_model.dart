import 'package:freezed_annotation/freezed_annotation.dart';

import '../predavanje/predavanje_in_db_model.dart';

part 'predavanje_in_db_model.freezed.dart';
part 'predavanje_in_db_model.g.dart';

@freezed
class PredavanjeInDBModel with _$PredavanjeInDBModel {
  factory PredavanjeInDBModel({
    String? id,
    String? predavanjeId,
    String? korisnikId,
    DateTime? imePrezime,
    String? nazivPredavanja,
  }) = _PredavanjeInDBModel;

  factory PredavanjeInDBModel.fromJson(Map<String, dynamic> json) =>
      _$PredavanjeInDBModelFromJson(json);
}
