import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel with _$AuthModel {
  factory AuthModel({
    String? userName,
    List<String>? dozvoljeneAkcije,
    String? email,
    String? frontendModul,
    String? frontendModulNaslov,
    String? punoIme,
    String? role,
    String? ulogaId,
    String? token,
    String? id,
    String? firstName,
    String? lastName,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}
