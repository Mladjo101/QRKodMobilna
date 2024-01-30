import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  factory UserProfile({
    String? lastName,
    String? password, // Consider if you really need to fetch password
    String? role,
    String? dateOfBirth,
    String? id,
    String? firstName,
    String? email,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
