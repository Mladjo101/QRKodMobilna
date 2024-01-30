// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Subject _$SubjectFromJson(Map<String, dynamic> json) {
  return _Subject.fromJson(json);
}

/// @nodoc
mixin _$Subject {
  String? get nazivPredmeta => throw _privateConstructorUsedError;
  int? get odrzanih => throw _privateConstructorUsedError;
  int? get prisutnih => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectCopyWith<Subject> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectCopyWith<$Res> {
  factory $SubjectCopyWith(Subject value, $Res Function(Subject) then) =
      _$SubjectCopyWithImpl<$Res, Subject>;
  @useResult
  $Res call({String? nazivPredmeta, int? odrzanih, int? prisutnih});
}

/// @nodoc
class _$SubjectCopyWithImpl<$Res, $Val extends Subject>
    implements $SubjectCopyWith<$Res> {
  _$SubjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nazivPredmeta = freezed,
    Object? odrzanih = freezed,
    Object? prisutnih = freezed,
  }) {
    return _then(_value.copyWith(
      nazivPredmeta: freezed == nazivPredmeta
          ? _value.nazivPredmeta
          : nazivPredmeta // ignore: cast_nullable_to_non_nullable
              as String?,
      odrzanih: freezed == odrzanih
          ? _value.odrzanih
          : odrzanih // ignore: cast_nullable_to_non_nullable
              as int?,
      prisutnih: freezed == prisutnih
          ? _value.prisutnih
          : prisutnih // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectImplCopyWith<$Res> implements $SubjectCopyWith<$Res> {
  factory _$$SubjectImplCopyWith(
          _$SubjectImpl value, $Res Function(_$SubjectImpl) then) =
      __$$SubjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? nazivPredmeta, int? odrzanih, int? prisutnih});
}

/// @nodoc
class __$$SubjectImplCopyWithImpl<$Res>
    extends _$SubjectCopyWithImpl<$Res, _$SubjectImpl>
    implements _$$SubjectImplCopyWith<$Res> {
  __$$SubjectImplCopyWithImpl(
      _$SubjectImpl _value, $Res Function(_$SubjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nazivPredmeta = freezed,
    Object? odrzanih = freezed,
    Object? prisutnih = freezed,
  }) {
    return _then(_$SubjectImpl(
      nazivPredmeta: freezed == nazivPredmeta
          ? _value.nazivPredmeta
          : nazivPredmeta // ignore: cast_nullable_to_non_nullable
              as String?,
      odrzanih: freezed == odrzanih
          ? _value.odrzanih
          : odrzanih // ignore: cast_nullable_to_non_nullable
              as int?,
      prisutnih: freezed == prisutnih
          ? _value.prisutnih
          : prisutnih // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectImpl implements _Subject {
  _$SubjectImpl({this.nazivPredmeta, this.odrzanih, this.prisutnih});

  factory _$SubjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectImplFromJson(json);

  @override
  final String? nazivPredmeta;
  @override
  final int? odrzanih;
  @override
  final int? prisutnih;

  @override
  String toString() {
    return 'Subject(nazivPredmeta: $nazivPredmeta, odrzanih: $odrzanih, prisutnih: $prisutnih)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectImpl &&
            (identical(other.nazivPredmeta, nazivPredmeta) ||
                other.nazivPredmeta == nazivPredmeta) &&
            (identical(other.odrzanih, odrzanih) ||
                other.odrzanih == odrzanih) &&
            (identical(other.prisutnih, prisutnih) ||
                other.prisutnih == prisutnih));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nazivPredmeta, odrzanih, prisutnih);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectImplCopyWith<_$SubjectImpl> get copyWith =>
      __$$SubjectImplCopyWithImpl<_$SubjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectImplToJson(
      this,
    );
  }
}

abstract class _Subject implements Subject {
  factory _Subject(
      {final String? nazivPredmeta,
      final int? odrzanih,
      final int? prisutnih}) = _$SubjectImpl;

  factory _Subject.fromJson(Map<String, dynamic> json) = _$SubjectImpl.fromJson;

  @override
  String? get nazivPredmeta;
  @override
  int? get odrzanih;
  @override
  int? get prisutnih;
  @override
  @JsonKey(ignore: true)
  _$$SubjectImplCopyWith<_$SubjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
