// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'predavanje_in_db_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PredavanjeInDBModel _$PredavanjeInDBModelFromJson(Map<String, dynamic> json) {
  return _PredavanjeInDBModel.fromJson(json);
}

/// @nodoc
mixin _$PredavanjeInDBModel {
  String? get id => throw _privateConstructorUsedError;
  String? get predavanjeId => throw _privateConstructorUsedError;
  String? get korisnikId => throw _privateConstructorUsedError;
  DateTime? get imePrezime => throw _privateConstructorUsedError;
  String? get nazivPredavanja => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PredavanjeInDBModelCopyWith<PredavanjeInDBModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredavanjeInDBModelCopyWith<$Res> {
  factory $PredavanjeInDBModelCopyWith(
          PredavanjeInDBModel value, $Res Function(PredavanjeInDBModel) then) =
      _$PredavanjeInDBModelCopyWithImpl<$Res, PredavanjeInDBModel>;
  @useResult
  $Res call(
      {String? id,
      String? predavanjeId,
      String? korisnikId,
      DateTime? imePrezime,
      String? nazivPredavanja});
}

/// @nodoc
class _$PredavanjeInDBModelCopyWithImpl<$Res, $Val extends PredavanjeInDBModel>
    implements $PredavanjeInDBModelCopyWith<$Res> {
  _$PredavanjeInDBModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? predavanjeId = freezed,
    Object? korisnikId = freezed,
    Object? imePrezime = freezed,
    Object? nazivPredavanja = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      predavanjeId: freezed == predavanjeId
          ? _value.predavanjeId
          : predavanjeId // ignore: cast_nullable_to_non_nullable
              as String?,
      korisnikId: freezed == korisnikId
          ? _value.korisnikId
          : korisnikId // ignore: cast_nullable_to_non_nullable
              as String?,
      imePrezime: freezed == imePrezime
          ? _value.imePrezime
          : imePrezime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nazivPredavanja: freezed == nazivPredavanja
          ? _value.nazivPredavanja
          : nazivPredavanja // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PredavanjeInDBModelImplCopyWith<$Res>
    implements $PredavanjeInDBModelCopyWith<$Res> {
  factory _$$PredavanjeInDBModelImplCopyWith(_$PredavanjeInDBModelImpl value,
          $Res Function(_$PredavanjeInDBModelImpl) then) =
      __$$PredavanjeInDBModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? predavanjeId,
      String? korisnikId,
      DateTime? imePrezime,
      String? nazivPredavanja});
}

/// @nodoc
class __$$PredavanjeInDBModelImplCopyWithImpl<$Res>
    extends _$PredavanjeInDBModelCopyWithImpl<$Res, _$PredavanjeInDBModelImpl>
    implements _$$PredavanjeInDBModelImplCopyWith<$Res> {
  __$$PredavanjeInDBModelImplCopyWithImpl(_$PredavanjeInDBModelImpl _value,
      $Res Function(_$PredavanjeInDBModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? predavanjeId = freezed,
    Object? korisnikId = freezed,
    Object? imePrezime = freezed,
    Object? nazivPredavanja = freezed,
  }) {
    return _then(_$PredavanjeInDBModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      predavanjeId: freezed == predavanjeId
          ? _value.predavanjeId
          : predavanjeId // ignore: cast_nullable_to_non_nullable
              as String?,
      korisnikId: freezed == korisnikId
          ? _value.korisnikId
          : korisnikId // ignore: cast_nullable_to_non_nullable
              as String?,
      imePrezime: freezed == imePrezime
          ? _value.imePrezime
          : imePrezime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nazivPredavanja: freezed == nazivPredavanja
          ? _value.nazivPredavanja
          : nazivPredavanja // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PredavanjeInDBModelImpl implements _PredavanjeInDBModel {
  _$PredavanjeInDBModelImpl(
      {this.id,
      this.predavanjeId,
      this.korisnikId,
      this.imePrezime,
      this.nazivPredavanja});

  factory _$PredavanjeInDBModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PredavanjeInDBModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? predavanjeId;
  @override
  final String? korisnikId;
  @override
  final DateTime? imePrezime;
  @override
  final String? nazivPredavanja;

  @override
  String toString() {
    return 'PredavanjeInDBModel(id: $id, predavanjeId: $predavanjeId, korisnikId: $korisnikId, imePrezime: $imePrezime, nazivPredavanja: $nazivPredavanja)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PredavanjeInDBModelImpl &&
            (identical(other.id, id) || other.id == id) &&
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
      runtimeType, id, predavanjeId, korisnikId, imePrezime, nazivPredavanja);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PredavanjeInDBModelImplCopyWith<_$PredavanjeInDBModelImpl> get copyWith =>
      __$$PredavanjeInDBModelImplCopyWithImpl<_$PredavanjeInDBModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PredavanjeInDBModelImplToJson(
      this,
    );
  }
}

abstract class _PredavanjeInDBModel implements PredavanjeInDBModel {
  factory _PredavanjeInDBModel(
      {final String? id,
      final String? predavanjeId,
      final String? korisnikId,
      final DateTime? imePrezime,
      final String? nazivPredavanja}) = _$PredavanjeInDBModelImpl;

  factory _PredavanjeInDBModel.fromJson(Map<String, dynamic> json) =
      _$PredavanjeInDBModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get predavanjeId;
  @override
  String? get korisnikId;
  @override
  DateTime? get imePrezime;
  @override
  String? get nazivPredavanja;
  @override
  @JsonKey(ignore: true)
  _$$PredavanjeInDBModelImplCopyWith<_$PredavanjeInDBModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
