// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Lecture _$LectureFromJson(Map<String, dynamic> json) {
  return _Lecture.fromJson(json);
}

/// @nodoc
mixin _$Lecture {
  String get predavanjeId => throw _privateConstructorUsedError;
  String get korisnikId => throw _privateConstructorUsedError;
  String get imePrezime => throw _privateConstructorUsedError;
  String get nazivPredavanja => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LectureCopyWith<Lecture> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LectureCopyWith<$Res> {
  factory $LectureCopyWith(Lecture value, $Res Function(Lecture) then) =
      _$LectureCopyWithImpl<$Res, Lecture>;
  @useResult
  $Res call(
      {String predavanjeId,
      String korisnikId,
      String imePrezime,
      String nazivPredavanja});
}

/// @nodoc
class _$LectureCopyWithImpl<$Res, $Val extends Lecture>
    implements $LectureCopyWith<$Res> {
  _$LectureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predavanjeId = null,
    Object? korisnikId = null,
    Object? imePrezime = null,
    Object? nazivPredavanja = null,
  }) {
    return _then(_value.copyWith(
      predavanjeId: null == predavanjeId
          ? _value.predavanjeId
          : predavanjeId // ignore: cast_nullable_to_non_nullable
              as String,
      korisnikId: null == korisnikId
          ? _value.korisnikId
          : korisnikId // ignore: cast_nullable_to_non_nullable
              as String,
      imePrezime: null == imePrezime
          ? _value.imePrezime
          : imePrezime // ignore: cast_nullable_to_non_nullable
              as String,
      nazivPredavanja: null == nazivPredavanja
          ? _value.nazivPredavanja
          : nazivPredavanja // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LectureImplCopyWith<$Res> implements $LectureCopyWith<$Res> {
  factory _$$LectureImplCopyWith(
          _$LectureImpl value, $Res Function(_$LectureImpl) then) =
      __$$LectureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String predavanjeId,
      String korisnikId,
      String imePrezime,
      String nazivPredavanja});
}

/// @nodoc
class __$$LectureImplCopyWithImpl<$Res>
    extends _$LectureCopyWithImpl<$Res, _$LectureImpl>
    implements _$$LectureImplCopyWith<$Res> {
  __$$LectureImplCopyWithImpl(
      _$LectureImpl _value, $Res Function(_$LectureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predavanjeId = null,
    Object? korisnikId = null,
    Object? imePrezime = null,
    Object? nazivPredavanja = null,
  }) {
    return _then(_$LectureImpl(
      predavanjeId: null == predavanjeId
          ? _value.predavanjeId
          : predavanjeId // ignore: cast_nullable_to_non_nullable
              as String,
      korisnikId: null == korisnikId
          ? _value.korisnikId
          : korisnikId // ignore: cast_nullable_to_non_nullable
              as String,
      imePrezime: null == imePrezime
          ? _value.imePrezime
          : imePrezime // ignore: cast_nullable_to_non_nullable
              as String,
      nazivPredavanja: null == nazivPredavanja
          ? _value.nazivPredavanja
          : nazivPredavanja // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LectureImpl implements _Lecture {
  const _$LectureImpl(
      {required this.predavanjeId,
      required this.korisnikId,
      required this.imePrezime,
      required this.nazivPredavanja});

  factory _$LectureImpl.fromJson(Map<String, dynamic> json) =>
      _$$LectureImplFromJson(json);

  @override
  final String predavanjeId;
  @override
  final String korisnikId;
  @override
  final String imePrezime;
  @override
  final String nazivPredavanja;

  @override
  String toString() {
    return 'Lecture(predavanjeId: $predavanjeId, korisnikId: $korisnikId, imePrezime: $imePrezime, nazivPredavanja: $nazivPredavanja)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LectureImpl &&
            (identical(other.predavanjeId, predavanjeId) ||
                other.predavanjeId == predavanjeId) &&
            (identical(other.korisnikId, korisnikId) ||
                other.korisnikId == korisnikId) &&
            (identical(other.imePrezime, imePrezime) ||
                other.imePrezime == imePrezime) &&
            (identical(other.nazivPredavanja, nazivPredavanja) ||
                other.nazivPredavanja == nazivPredavanja));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, predavanjeId, korisnikId, imePrezime, nazivPredavanja);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LectureImplCopyWith<_$LectureImpl> get copyWith =>
      __$$LectureImplCopyWithImpl<_$LectureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LectureImplToJson(
      this,
    );
  }
}

abstract class _Lecture implements Lecture {
  const factory _Lecture(
      {required final String predavanjeId,
      required final String korisnikId,
      required final String imePrezime,
      required final String nazivPredavanja}) = _$LectureImpl;

  factory _Lecture.fromJson(Map<String, dynamic> json) = _$LectureImpl.fromJson;

  @override
  String get predavanjeId;
  @override
  String get korisnikId;
  @override
  String get imePrezime;
  @override
  String get nazivPredavanja;
  @override
  @JsonKey(ignore: true)
  _$$LectureImplCopyWith<_$LectureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
