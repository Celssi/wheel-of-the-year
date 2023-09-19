// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sabbat_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SabbatText _$SabbatTextFromJson(Map<String, dynamic> json) {
  return _SabbatText.fromJson(json);
}

/// @nodoc
mixin _$SabbatText {
  String get name => throw _privateConstructorUsedError;
  List<String> get paragraphs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SabbatTextCopyWith<SabbatText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SabbatTextCopyWith<$Res> {
  factory $SabbatTextCopyWith(
          SabbatText value, $Res Function(SabbatText) then) =
      _$SabbatTextCopyWithImpl<$Res, SabbatText>;
  @useResult
  $Res call({String name, List<String> paragraphs});
}

/// @nodoc
class _$SabbatTextCopyWithImpl<$Res, $Val extends SabbatText>
    implements $SabbatTextCopyWith<$Res> {
  _$SabbatTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? paragraphs = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      paragraphs: null == paragraphs
          ? _value.paragraphs
          : paragraphs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SabbatTextCopyWith<$Res>
    implements $SabbatTextCopyWith<$Res> {
  factory _$$_SabbatTextCopyWith(
          _$_SabbatText value, $Res Function(_$_SabbatText) then) =
      __$$_SabbatTextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<String> paragraphs});
}

/// @nodoc
class __$$_SabbatTextCopyWithImpl<$Res>
    extends _$SabbatTextCopyWithImpl<$Res, _$_SabbatText>
    implements _$$_SabbatTextCopyWith<$Res> {
  __$$_SabbatTextCopyWithImpl(
      _$_SabbatText _value, $Res Function(_$_SabbatText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? paragraphs = null,
  }) {
    return _then(_$_SabbatText(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      paragraphs: null == paragraphs
          ? _value._paragraphs
          : paragraphs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SabbatText implements _SabbatText {
  const _$_SabbatText(
      {required this.name, required final List<String> paragraphs})
      : _paragraphs = paragraphs;

  factory _$_SabbatText.fromJson(Map<String, dynamic> json) =>
      _$$_SabbatTextFromJson(json);

  @override
  final String name;
  final List<String> _paragraphs;
  @override
  List<String> get paragraphs {
    if (_paragraphs is EqualUnmodifiableListView) return _paragraphs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paragraphs);
  }

  @override
  String toString() {
    return 'SabbatText(name: $name, paragraphs: $paragraphs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SabbatText &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._paragraphs, _paragraphs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_paragraphs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SabbatTextCopyWith<_$_SabbatText> get copyWith =>
      __$$_SabbatTextCopyWithImpl<_$_SabbatText>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SabbatTextToJson(
      this,
    );
  }
}

abstract class _SabbatText implements SabbatText {
  const factory _SabbatText(
      {required final String name,
      required final List<String> paragraphs}) = _$_SabbatText;

  factory _SabbatText.fromJson(Map<String, dynamic> json) =
      _$_SabbatText.fromJson;

  @override
  String get name;
  @override
  List<String> get paragraphs;
  @override
  @JsonKey(ignore: true)
  _$$_SabbatTextCopyWith<_$_SabbatText> get copyWith =>
      throw _privateConstructorUsedError;
}
