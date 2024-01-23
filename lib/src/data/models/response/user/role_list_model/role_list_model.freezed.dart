// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'role_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoleListModel _$RoleListModelFromJson(Map<String, dynamic> json) {
  return _RoleListModel.fromJson(json);
}

/// @nodoc
mixin _$RoleListModel {
  String? get email => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get imePrezime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoleListModelCopyWith<RoleListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleListModelCopyWith<$Res> {
  factory $RoleListModelCopyWith(
          RoleListModel value, $Res Function(RoleListModel) then) =
      _$RoleListModelCopyWithImpl<$Res, RoleListModel>;
  @useResult
  $Res call(
      {String? email,
      String? firstName,
      String? lastName,
      DateTime? dateOfBirth,
      String? token,
      String? id,
      String? imePrezime});
}

/// @nodoc
class _$RoleListModelCopyWithImpl<$Res, $Val extends RoleListModel>
    implements $RoleListModelCopyWith<$Res> {
  _$RoleListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? dateOfBirth = freezed,
    Object? token = freezed,
    Object? id = freezed,
    Object? imePrezime = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imePrezime: freezed == imePrezime
          ? _value.imePrezime
          : imePrezime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoleListModelCopyWith<$Res>
    implements $RoleListModelCopyWith<$Res> {
  factory _$$_RoleListModelCopyWith(
          _$_RoleListModel value, $Res Function(_$_RoleListModel) then) =
      __$$_RoleListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      String? firstName,
      String? lastName,
      DateTime? dateOfBirth,
      String? token,
      String? id,
      String? imePrezime});
}

/// @nodoc
class __$$_RoleListModelCopyWithImpl<$Res>
    extends _$RoleListModelCopyWithImpl<$Res, _$_RoleListModel>
    implements _$$_RoleListModelCopyWith<$Res> {
  __$$_RoleListModelCopyWithImpl(
      _$_RoleListModel _value, $Res Function(_$_RoleListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? dateOfBirth = freezed,
    Object? token = freezed,
    Object? id = freezed,
    Object? imePrezime = freezed,
  }) {
    return _then(_$_RoleListModel(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imePrezime: freezed == imePrezime
          ? _value.imePrezime
          : imePrezime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoleListModel implements _RoleListModel {
  _$_RoleListModel(
      {this.email,
      this.firstName,
      this.lastName,
      this.dateOfBirth,
      this.token,
      this.id,
      this.imePrezime});

  factory _$_RoleListModel.fromJson(Map<String, dynamic> json) =>
      _$$_RoleListModelFromJson(json);

  @override
  final String? email;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final DateTime? dateOfBirth;
  @override
  final String? token;
  @override
  final String? id;
  @override
  final String? imePrezime;

  @override
  String toString() {
    return 'RoleListModel(email: $email, firstName: $firstName, lastName: $lastName, dateOfBirth: $dateOfBirth, token: $token, id: $id, imePrezime: $imePrezime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoleListModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imePrezime, imePrezime) ||
                other.imePrezime == imePrezime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, firstName, lastName,
      dateOfBirth, token, id, imePrezime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoleListModelCopyWith<_$_RoleListModel> get copyWith =>
      __$$_RoleListModelCopyWithImpl<_$_RoleListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoleListModelToJson(
      this,
    );
  }
}

abstract class _RoleListModel implements RoleListModel {
  factory _RoleListModel(
      {final String? email,
      final String? firstName,
      final String? lastName,
      final DateTime? dateOfBirth,
      final String? token,
      final String? id,
      final String? imePrezime}) = _$_RoleListModel;

  factory _RoleListModel.fromJson(Map<String, dynamic> json) =
      _$_RoleListModel.fromJson;

  @override
  String? get email;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  DateTime? get dateOfBirth;
  @override
  String? get token;
  @override
  String? get id;
  @override
  String? get imePrezime;
  @override
  @JsonKey(ignore: true)
  _$$_RoleListModelCopyWith<_$_RoleListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
