// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sifarnik_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SifarnikModel _$SifarnikModelFromJson(Map<String, dynamic> json) {
  return _SifarnikModel.fromJson(json);
}

/// @nodoc
mixin _$SifarnikModel {
  int get id => throw _privateConstructorUsedError;
  String? get naziv => throw _privateConstructorUsedError;
  String? get sifra => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  int get poredak => throw _privateConstructorUsedError;
  bool get prvi => throw _privateConstructorUsedError;
  String? get hex => throw _privateConstructorUsedError;
  DateTime? get datumIzmjene => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SifarnikModelCopyWith<SifarnikModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SifarnikModelCopyWith<$Res> {
  factory $SifarnikModelCopyWith(
          SifarnikModel value, $Res Function(SifarnikModel) then) =
      _$SifarnikModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? naziv,
      String? sifra,
      bool isDeleted,
      int poredak,
      bool prvi,
      String? hex,
      DateTime? datumIzmjene});
}

/// @nodoc
class _$SifarnikModelCopyWithImpl<$Res>
    implements $SifarnikModelCopyWith<$Res> {
  _$SifarnikModelCopyWithImpl(this._value, this._then);

  final SifarnikModel _value;
  // ignore: unused_field
  final $Res Function(SifarnikModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? naziv = freezed,
    Object? sifra = freezed,
    Object? isDeleted = freezed,
    Object? poredak = freezed,
    Object? prvi = freezed,
    Object? hex = freezed,
    Object? datumIzmjene = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      naziv: naziv == freezed
          ? _value.naziv
          : naziv // ignore: cast_nullable_to_non_nullable
              as String?,
      sifra: sifra == freezed
          ? _value.sifra
          : sifra // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: isDeleted == freezed
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      poredak: poredak == freezed
          ? _value.poredak
          : poredak // ignore: cast_nullable_to_non_nullable
              as int,
      prvi: prvi == freezed
          ? _value.prvi
          : prvi // ignore: cast_nullable_to_non_nullable
              as bool,
      hex: hex == freezed
          ? _value.hex
          : hex // ignore: cast_nullable_to_non_nullable
              as String?,
      datumIzmjene: datumIzmjene == freezed
          ? _value.datumIzmjene
          : datumIzmjene // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_SifarnikModelCopyWith<$Res>
    implements $SifarnikModelCopyWith<$Res> {
  factory _$$_SifarnikModelCopyWith(
          _$_SifarnikModel value, $Res Function(_$_SifarnikModel) then) =
      __$$_SifarnikModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? naziv,
      String? sifra,
      bool isDeleted,
      int poredak,
      bool prvi,
      String? hex,
      DateTime? datumIzmjene});
}

/// @nodoc
class __$$_SifarnikModelCopyWithImpl<$Res>
    extends _$SifarnikModelCopyWithImpl<$Res>
    implements _$$_SifarnikModelCopyWith<$Res> {
  __$$_SifarnikModelCopyWithImpl(
      _$_SifarnikModel _value, $Res Function(_$_SifarnikModel) _then)
      : super(_value, (v) => _then(v as _$_SifarnikModel));

  @override
  _$_SifarnikModel get _value => super._value as _$_SifarnikModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? naziv = freezed,
    Object? sifra = freezed,
    Object? isDeleted = freezed,
    Object? poredak = freezed,
    Object? prvi = freezed,
    Object? hex = freezed,
    Object? datumIzmjene = freezed,
  }) {
    return _then(_$_SifarnikModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      naziv: naziv == freezed
          ? _value.naziv
          : naziv // ignore: cast_nullable_to_non_nullable
              as String?,
      sifra: sifra == freezed
          ? _value.sifra
          : sifra // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: isDeleted == freezed
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      poredak: poredak == freezed
          ? _value.poredak
          : poredak // ignore: cast_nullable_to_non_nullable
              as int,
      prvi: prvi == freezed
          ? _value.prvi
          : prvi // ignore: cast_nullable_to_non_nullable
              as bool,
      hex: hex == freezed
          ? _value.hex
          : hex // ignore: cast_nullable_to_non_nullable
              as String?,
      datumIzmjene: datumIzmjene == freezed
          ? _value.datumIzmjene
          : datumIzmjene // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SifarnikModel implements _SifarnikModel {
  _$_SifarnikModel(
      {required this.id,
      this.naziv,
      this.sifra,
      required this.isDeleted,
      required this.poredak,
      required this.prvi,
      this.hex,
      this.datumIzmjene});

  factory _$_SifarnikModel.fromJson(Map<String, dynamic> json) =>
      _$$_SifarnikModelFromJson(json);

  @override
  final int id;
  @override
  final String? naziv;
  @override
  final String? sifra;
  @override
  final bool isDeleted;
  @override
  final int poredak;
  @override
  final bool prvi;
  @override
  final String? hex;
  @override
  final DateTime? datumIzmjene;

  @override
  String toString() {
    return 'SifarnikModel(id: $id, naziv: $naziv, sifra: $sifra, isDeleted: $isDeleted, poredak: $poredak, prvi: $prvi, hex: $hex, datumIzmjene: $datumIzmjene)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SifarnikModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.naziv, naziv) &&
            const DeepCollectionEquality().equals(other.sifra, sifra) &&
            const DeepCollectionEquality().equals(other.isDeleted, isDeleted) &&
            const DeepCollectionEquality().equals(other.poredak, poredak) &&
            const DeepCollectionEquality().equals(other.prvi, prvi) &&
            const DeepCollectionEquality().equals(other.hex, hex) &&
            const DeepCollectionEquality()
                .equals(other.datumIzmjene, datumIzmjene));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(naziv),
      const DeepCollectionEquality().hash(sifra),
      const DeepCollectionEquality().hash(isDeleted),
      const DeepCollectionEquality().hash(poredak),
      const DeepCollectionEquality().hash(prvi),
      const DeepCollectionEquality().hash(hex),
      const DeepCollectionEquality().hash(datumIzmjene));

  @JsonKey(ignore: true)
  @override
  _$$_SifarnikModelCopyWith<_$_SifarnikModel> get copyWith =>
      __$$_SifarnikModelCopyWithImpl<_$_SifarnikModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SifarnikModelToJson(
      this,
    );
  }
}

abstract class _SifarnikModel implements SifarnikModel {
  factory _SifarnikModel(
      {required final int id,
      final String? naziv,
      final String? sifra,
      required final bool isDeleted,
      required final int poredak,
      required final bool prvi,
      final String? hex,
      final DateTime? datumIzmjene}) = _$_SifarnikModel;

  factory _SifarnikModel.fromJson(Map<String, dynamic> json) =
      _$_SifarnikModel.fromJson;

  @override
  int get id;
  @override
  String? get naziv;
  @override
  String? get sifra;
  @override
  bool get isDeleted;
  @override
  int get poredak;
  @override
  bool get prvi;
  @override
  String? get hex;
  @override
  DateTime? get datumIzmjene;
  @override
  @JsonKey(ignore: true)
  _$$_SifarnikModelCopyWith<_$_SifarnikModel> get copyWith =>
      throw _privateConstructorUsedError;
}
