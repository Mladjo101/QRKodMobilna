// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'predavanje_historija_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PredavanjeHistorijaItem _$PredavanjeHistorijaItemFromJson(
    Map<String, dynamic> json) {
  return _PredavanjeHistorijaItem.fromJson(json);
}

/// @nodoc
mixin _$PredavanjeHistorijaItem {
  DateTime? get datumPredavanja => throw _privateConstructorUsedError;
  String? get nazivPredmeta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PredavanjeHistorijaItemCopyWith<PredavanjeHistorijaItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredavanjeHistorijaItemCopyWith<$Res> {
  factory $PredavanjeHistorijaItemCopyWith(PredavanjeHistorijaItem value,
          $Res Function(PredavanjeHistorijaItem) then) =
      _$PredavanjeHistorijaItemCopyWithImpl<$Res, PredavanjeHistorijaItem>;
  @useResult
  $Res call({DateTime? datumPredavanja, String? nazivPredmeta});
}

/// @nodoc
class _$PredavanjeHistorijaItemCopyWithImpl<$Res,
        $Val extends PredavanjeHistorijaItem>
    implements $PredavanjeHistorijaItemCopyWith<$Res> {
  _$PredavanjeHistorijaItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datumPredavanja = freezed,
    Object? nazivPredmeta = freezed,
  }) {
    return _then(_value.copyWith(
      datumPredavanja: freezed == datumPredavanja
          ? _value.datumPredavanja
          : datumPredavanja // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nazivPredmeta: freezed == nazivPredmeta
          ? _value.nazivPredmeta
          : nazivPredmeta // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PredavanjeHistorijaItemImplCopyWith<$Res>
    implements $PredavanjeHistorijaItemCopyWith<$Res> {
  factory _$$PredavanjeHistorijaItemImplCopyWith(
          _$PredavanjeHistorijaItemImpl value,
          $Res Function(_$PredavanjeHistorijaItemImpl) then) =
      __$$PredavanjeHistorijaItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? datumPredavanja, String? nazivPredmeta});
}

/// @nodoc
class __$$PredavanjeHistorijaItemImplCopyWithImpl<$Res>
    extends _$PredavanjeHistorijaItemCopyWithImpl<$Res,
        _$PredavanjeHistorijaItemImpl>
    implements _$$PredavanjeHistorijaItemImplCopyWith<$Res> {
  __$$PredavanjeHistorijaItemImplCopyWithImpl(
      _$PredavanjeHistorijaItemImpl _value,
      $Res Function(_$PredavanjeHistorijaItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datumPredavanja = freezed,
    Object? nazivPredmeta = freezed,
  }) {
    return _then(_$PredavanjeHistorijaItemImpl(
      datumPredavanja: freezed == datumPredavanja
          ? _value.datumPredavanja
          : datumPredavanja // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nazivPredmeta: freezed == nazivPredmeta
          ? _value.nazivPredmeta
          : nazivPredmeta // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PredavanjeHistorijaItemImpl implements _PredavanjeHistorijaItem {
  _$PredavanjeHistorijaItemImpl({this.datumPredavanja, this.nazivPredmeta});

  factory _$PredavanjeHistorijaItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PredavanjeHistorijaItemImplFromJson(json);

  @override
  final DateTime? datumPredavanja;
  @override
  final String? nazivPredmeta;

  @override
  String toString() {
    return 'PredavanjeHistorijaItem(datumPredavanja: $datumPredavanja, nazivPredmeta: $nazivPredmeta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PredavanjeHistorijaItemImpl &&
            (identical(other.datumPredavanja, datumPredavanja) ||
                other.datumPredavanja == datumPredavanja) &&
            (identical(other.nazivPredmeta, nazivPredmeta) ||
                other.nazivPredmeta == nazivPredmeta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, datumPredavanja, nazivPredmeta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PredavanjeHistorijaItemImplCopyWith<_$PredavanjeHistorijaItemImpl>
      get copyWith => __$$PredavanjeHistorijaItemImplCopyWithImpl<
          _$PredavanjeHistorijaItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PredavanjeHistorijaItemImplToJson(
      this,
    );
  }
}

abstract class _PredavanjeHistorijaItem implements PredavanjeHistorijaItem {
  factory _PredavanjeHistorijaItem(
      {final DateTime? datumPredavanja,
      final String? nazivPredmeta}) = _$PredavanjeHistorijaItemImpl;

  factory _PredavanjeHistorijaItem.fromJson(Map<String, dynamic> json) =
      _$PredavanjeHistorijaItemImpl.fromJson;

  @override
  DateTime? get datumPredavanja;
  @override
  String? get nazivPredmeta;
  @override
  @JsonKey(ignore: true)
  _$$PredavanjeHistorijaItemImplCopyWith<_$PredavanjeHistorijaItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
