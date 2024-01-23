// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_predavanje_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterPredavanjeModel _$RegisterPredavanjeModelFromJson(
    Map<String, dynamic> json) {
  return _RegisterPredavanjeModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterPredavanjeModel {
  String? get predavanjeId => throw _privateConstructorUsedError;
  String? get korisnikId => throw _privateConstructorUsedError;
  DateTime? get imePrezime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterPredavanjeModelCopyWith<RegisterPredavanjeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterPredavanjeModelCopyWith<$Res> {
  factory $RegisterPredavanjeModelCopyWith(RegisterPredavanjeModel value,
          $Res Function(RegisterPredavanjeModel) then) =
      _$RegisterPredavanjeModelCopyWithImpl<$Res, RegisterPredavanjeModel>;
  @useResult
  $Res call({String? predavanjeId, String? korisnikId, DateTime? imePrezime});
}

/// @nodoc
class _$RegisterPredavanjeModelCopyWithImpl<$Res,
        $Val extends RegisterPredavanjeModel>
    implements $RegisterPredavanjeModelCopyWith<$Res> {
  _$RegisterPredavanjeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predavanjeId = freezed,
    Object? korisnikId = freezed,
    Object? imePrezime = freezed,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterPredavanjeModelCopyWith<$Res>
    implements $RegisterPredavanjeModelCopyWith<$Res> {
  factory _$$_RegisterPredavanjeModelCopyWith(_$_RegisterPredavanjeModel value,
          $Res Function(_$_RegisterPredavanjeModel) then) =
      __$$_RegisterPredavanjeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? predavanjeId, String? korisnikId, DateTime? imePrezime});
}

/// @nodoc
class __$$_RegisterPredavanjeModelCopyWithImpl<$Res>
    extends _$RegisterPredavanjeModelCopyWithImpl<$Res,
        _$_RegisterPredavanjeModel>
    implements _$$_RegisterPredavanjeModelCopyWith<$Res> {
  __$$_RegisterPredavanjeModelCopyWithImpl(_$_RegisterPredavanjeModel _value,
      $Res Function(_$_RegisterPredavanjeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predavanjeId = freezed,
    Object? korisnikId = freezed,
    Object? imePrezime = freezed,
  }) {
    return _then(_$_RegisterPredavanjeModel(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterPredavanjeModel implements _RegisterPredavanjeModel {
  _$_RegisterPredavanjeModel(
      {this.predavanjeId, this.korisnikId, this.imePrezime});

  factory _$_RegisterPredavanjeModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterPredavanjeModelFromJson(json);

  @override
  final String? predavanjeId;
  @override
  final String? korisnikId;
  @override
  final DateTime? imePrezime;

  @override
  String toString() {
    return 'RegisterPredavanjeModel(predavanjeId: $predavanjeId, korisnikId: $korisnikId, imePrezime: $imePrezime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterPredavanjeModel &&
            (identical(other.predavanjeId, predavanjeId) ||
                other.predavanjeId == predavanjeId) &&
            (identical(other.korisnikId, korisnikId) ||
                other.korisnikId == korisnikId) &&
            (identical(other.imePrezime, imePrezime) ||
                other.imePrezime == imePrezime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, predavanjeId, korisnikId, imePrezime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterPredavanjeModelCopyWith<_$_RegisterPredavanjeModel>
      get copyWith =>
          __$$_RegisterPredavanjeModelCopyWithImpl<_$_RegisterPredavanjeModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterPredavanjeModelToJson(
      this,
    );
  }
}

abstract class _RegisterPredavanjeModel implements RegisterPredavanjeModel {
  factory _RegisterPredavanjeModel(
      {final String? predavanjeId,
      final String? korisnikId,
      final DateTime? imePrezime}) = _$_RegisterPredavanjeModel;

  factory _RegisterPredavanjeModel.fromJson(Map<String, dynamic> json) =
      _$_RegisterPredavanjeModel.fromJson;

  @override
  String? get predavanjeId;
  @override
  String? get korisnikId;
  @override
  DateTime? get imePrezime;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterPredavanjeModelCopyWith<_$_RegisterPredavanjeModel>
      get copyWith => throw _privateConstructorUsedError;
}
