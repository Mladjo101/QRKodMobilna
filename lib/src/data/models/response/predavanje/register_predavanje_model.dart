import 'package:freezed_annotation/freezed_annotation.dart';

import '../predavanje/predavanje_in_db_model.dart';

part 'register_predavanje_model.freezed.dart';
part 'register_predavanje_model.g.dart';

@freezed
class RegisterPredavanjeModel with _$RegisterPredavanjeModel {
  factory RegisterPredavanjeModel({
    String? predavanjeId,
    String? korisnikId,
    DateTime? imePrezime,
  }) = _RegisterPredavanjeModel;

  factory RegisterPredavanjeModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterPredavanjeModelFromJson(json);
}
