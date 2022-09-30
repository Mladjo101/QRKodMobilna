// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  List<RoleListModelItem> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoleListModelCopyWith<RoleListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleListModelCopyWith<$Res> {
  factory $RoleListModelCopyWith(
          RoleListModel value, $Res Function(RoleListModel) then) =
      _$RoleListModelCopyWithImpl<$Res>;
  $Res call({List<RoleListModelItem> items});
}

/// @nodoc
class _$RoleListModelCopyWithImpl<$Res>
    implements $RoleListModelCopyWith<$Res> {
  _$RoleListModelCopyWithImpl(this._value, this._then);

  final RoleListModel _value;
  // ignore: unused_field
  final $Res Function(RoleListModel) _then;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RoleListModelItem>,
    ));
  }
}

/// @nodoc
abstract class _$$_RoleListModelCopyWith<$Res>
    implements $RoleListModelCopyWith<$Res> {
  factory _$$_RoleListModelCopyWith(
          _$_RoleListModel value, $Res Function(_$_RoleListModel) then) =
      __$$_RoleListModelCopyWithImpl<$Res>;
  @override
  $Res call({List<RoleListModelItem> items});
}

/// @nodoc
class __$$_RoleListModelCopyWithImpl<$Res>
    extends _$RoleListModelCopyWithImpl<$Res>
    implements _$$_RoleListModelCopyWith<$Res> {
  __$$_RoleListModelCopyWithImpl(
      _$_RoleListModel _value, $Res Function(_$_RoleListModel) _then)
      : super(_value, (v) => _then(v as _$_RoleListModel));

  @override
  _$_RoleListModel get _value => super._value as _$_RoleListModel;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$_RoleListModel(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RoleListModelItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoleListModel implements _RoleListModel {
  _$_RoleListModel({required final List<RoleListModelItem> items})
      : _items = items;

  factory _$_RoleListModel.fromJson(Map<String, dynamic> json) =>
      _$$_RoleListModelFromJson(json);

  final List<RoleListModelItem> _items;
  @override
  List<RoleListModelItem> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'RoleListModel(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoleListModel &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
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
  factory _RoleListModel({required final List<RoleListModelItem> items}) =
      _$_RoleListModel;

  factory _RoleListModel.fromJson(Map<String, dynamic> json) =
      _$_RoleListModel.fromJson;

  @override
  List<RoleListModelItem> get items;
  @override
  @JsonKey(ignore: true)
  _$$_RoleListModelCopyWith<_$_RoleListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
