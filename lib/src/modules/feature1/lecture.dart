import 'package:freezed_annotation/freezed_annotation.dart';

part 'lecture.freezed.dart';
part 'lecture.g.dart';

@freezed
class Lecture with _$Lecture {
  const factory Lecture({
    required String predavanjeId,
    required String korisnikId,
    required String imePrezime,
    required String nazivPredavanja,
  }) = _Lecture;

  factory Lecture.fromJson(Map<String, dynamic> json) =>
      _$LectureFromJson(json);
}
