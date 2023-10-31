// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LibraryCategory _$LibraryCategoryFromJson(Map<String, dynamic> json) {
  return _LibraryCategory.fromJson(json);
}

/// @nodoc
mixin _$LibraryCategory {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LibraryCategoryCopyWith<LibraryCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryCategoryCopyWith<$Res> {
  factory $LibraryCategoryCopyWith(
          LibraryCategory value, $Res Function(LibraryCategory) then) =
      _$LibraryCategoryCopyWithImpl<$Res, LibraryCategory>;
  @useResult
  $Res call({String name, String id});
}

/// @nodoc
class _$LibraryCategoryCopyWithImpl<$Res, $Val extends LibraryCategory>
    implements $LibraryCategoryCopyWith<$Res> {
  _$LibraryCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LibraryCategoryCopyWith<$Res>
    implements $LibraryCategoryCopyWith<$Res> {
  factory _$$_LibraryCategoryCopyWith(
          _$_LibraryCategory value, $Res Function(_$_LibraryCategory) then) =
      __$$_LibraryCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id});
}

/// @nodoc
class __$$_LibraryCategoryCopyWithImpl<$Res>
    extends _$LibraryCategoryCopyWithImpl<$Res, _$_LibraryCategory>
    implements _$$_LibraryCategoryCopyWith<$Res> {
  __$$_LibraryCategoryCopyWithImpl(
      _$_LibraryCategory _value, $Res Function(_$_LibraryCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_$_LibraryCategory(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LibraryCategory implements _LibraryCategory {
  const _$_LibraryCategory({required this.name, required this.id});

  factory _$_LibraryCategory.fromJson(Map<String, dynamic> json) =>
      _$$_LibraryCategoryFromJson(json);

  @override
  final String name;
  @override
  final String id;

  @override
  String toString() {
    return 'LibraryCategory(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LibraryCategory &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LibraryCategoryCopyWith<_$_LibraryCategory> get copyWith =>
      __$$_LibraryCategoryCopyWithImpl<_$_LibraryCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LibraryCategoryToJson(
      this,
    );
  }
}

abstract class _LibraryCategory implements LibraryCategory {
  const factory _LibraryCategory(
      {required final String name,
      required final String id}) = _$_LibraryCategory;

  factory _LibraryCategory.fromJson(Map<String, dynamic> json) =
      _$_LibraryCategory.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_LibraryCategoryCopyWith<_$_LibraryCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
