import 'package:freezed_annotation/freezed_annotation.dart';

import '../role_list_model_item/role_list_model_item.dart';

part 'role_list_model.freezed.dart';
part 'role_list_model.g.dart';

@freezed
class RoleListModel with _$RoleListModel {
  factory RoleListModel({
    String? email,
    String? firstName,
    String? lastName,
    DateTime? dateOfBirth,
    String? token,
    String? id,
    String? imePrezime,
  }) = _RoleListModel;

  factory RoleListModel.fromJson(Map<String, dynamic> json) =>
      _$RoleListModelFromJson(json);
}
