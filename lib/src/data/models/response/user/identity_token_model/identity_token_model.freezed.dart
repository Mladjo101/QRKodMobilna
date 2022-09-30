// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'identity_token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IdentityTokenModel _$IdentityTokenModelFromJson(Map<String, dynamic> json) {
  return _IdentityTokenModel.fromJson(json);
}

/// @nodoc
mixin _$IdentityTokenModel {
  String get access_token => throw _privateConstructorUsedError;
  int get expires_in => throw _privateConstructorUsedError;
  String get refresh_token => throw _privateConstructorUsedError;
  String get scope => throw _privateConstructorUsedError;
  String get token_type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdentityTokenModelCopyWith<IdentityTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentityTokenModelCopyWith<$Res> {
  factory $IdentityTokenModelCopyWith(
          IdentityTokenModel value, $Res Function(IdentityTokenModel) then) =
      _$IdentityTokenModelCopyWithImpl<$Res>;
  $Res call(
      {String access_token,
      int expires_in,
      String refresh_token,
      String scope,
      String token_type});
}

/// @nodoc
class _$IdentityTokenModelCopyWithImpl<$Res>
    implements $IdentityTokenModelCopyWith<$Res> {
  _$IdentityTokenModelCopyWithImpl(this._value, this._then);

  final IdentityTokenModel _value;
  // ignore: unused_field
  final $Res Function(IdentityTokenModel) _then;

  @override
  $Res call({
    Object? access_token = freezed,
    Object? expires_in = freezed,
    Object? refresh_token = freezed,
    Object? scope = freezed,
    Object? token_type = freezed,
  }) {
    return _then(_value.copyWith(
      access_token: access_token == freezed
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      expires_in: expires_in == freezed
          ? _value.expires_in
          : expires_in // ignore: cast_nullable_to_non_nullable
              as int,
      refresh_token: refresh_token == freezed
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
      scope: scope == freezed
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      token_type: token_type == freezed
          ? _value.token_type
          : token_type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_IdentityTokenModelCopyWith<$Res>
    implements $IdentityTokenModelCopyWith<$Res> {
  factory _$$_IdentityTokenModelCopyWith(_$_IdentityTokenModel value,
          $Res Function(_$_IdentityTokenModel) then) =
      __$$_IdentityTokenModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String access_token,
      int expires_in,
      String refresh_token,
      String scope,
      String token_type});
}

/// @nodoc
class __$$_IdentityTokenModelCopyWithImpl<$Res>
    extends _$IdentityTokenModelCopyWithImpl<$Res>
    implements _$$_IdentityTokenModelCopyWith<$Res> {
  __$$_IdentityTokenModelCopyWithImpl(
      _$_IdentityTokenModel _value, $Res Function(_$_IdentityTokenModel) _then)
      : super(_value, (v) => _then(v as _$_IdentityTokenModel));

  @override
  _$_IdentityTokenModel get _value => super._value as _$_IdentityTokenModel;

  @override
  $Res call({
    Object? access_token = freezed,
    Object? expires_in = freezed,
    Object? refresh_token = freezed,
    Object? scope = freezed,
    Object? token_type = freezed,
  }) {
    return _then(_$_IdentityTokenModel(
      access_token: access_token == freezed
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      expires_in: expires_in == freezed
          ? _value.expires_in
          : expires_in // ignore: cast_nullable_to_non_nullable
              as int,
      refresh_token: refresh_token == freezed
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
      scope: scope == freezed
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      token_type: token_type == freezed
          ? _value.token_type
          : token_type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IdentityTokenModel implements _IdentityTokenModel {
  _$_IdentityTokenModel(
      {required this.access_token,
      required this.expires_in,
      required this.refresh_token,
      required this.scope,
      required this.token_type});

  factory _$_IdentityTokenModel.fromJson(Map<String, dynamic> json) =>
      _$$_IdentityTokenModelFromJson(json);

  @override
  final String access_token;
  @override
  final int expires_in;
  @override
  final String refresh_token;
  @override
  final String scope;
  @override
  final String token_type;

  @override
  String toString() {
    return 'IdentityTokenModel(access_token: $access_token, expires_in: $expires_in, refresh_token: $refresh_token, scope: $scope, token_type: $token_type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdentityTokenModel &&
            const DeepCollectionEquality()
                .equals(other.access_token, access_token) &&
            const DeepCollectionEquality()
                .equals(other.expires_in, expires_in) &&
            const DeepCollectionEquality()
                .equals(other.refresh_token, refresh_token) &&
            const DeepCollectionEquality().equals(other.scope, scope) &&
            const DeepCollectionEquality()
                .equals(other.token_type, token_type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(access_token),
      const DeepCollectionEquality().hash(expires_in),
      const DeepCollectionEquality().hash(refresh_token),
      const DeepCollectionEquality().hash(scope),
      const DeepCollectionEquality().hash(token_type));

  @JsonKey(ignore: true)
  @override
  _$$_IdentityTokenModelCopyWith<_$_IdentityTokenModel> get copyWith =>
      __$$_IdentityTokenModelCopyWithImpl<_$_IdentityTokenModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IdentityTokenModelToJson(
      this,
    );
  }
}

abstract class _IdentityTokenModel implements IdentityTokenModel {
  factory _IdentityTokenModel(
      {required final String access_token,
      required final int expires_in,
      required final String refresh_token,
      required final String scope,
      required final String token_type}) = _$_IdentityTokenModel;

  factory _IdentityTokenModel.fromJson(Map<String, dynamic> json) =
      _$_IdentityTokenModel.fromJson;

  @override
  String get access_token;
  @override
  int get expires_in;
  @override
  String get refresh_token;
  @override
  String get scope;
  @override
  String get token_type;
  @override
  @JsonKey(ignore: true)
  _$$_IdentityTokenModelCopyWith<_$_IdentityTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}
