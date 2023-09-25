// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tarot_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TarotText _$TarotTextFromJson(Map<String, dynamic> json) {
  return _TarotText.fromJson(json);
}

/// @nodoc
mixin _$TarotText {
  String get name => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get keywords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TarotTextCopyWith<TarotText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TarotTextCopyWith<$Res> {
  factory $TarotTextCopyWith(TarotText value, $Res Function(TarotText) then) =
      _$TarotTextCopyWithImpl<$Res, TarotText>;
  @useResult
  $Res call({String name, String text, String keywords});
}

/// @nodoc
class _$TarotTextCopyWithImpl<$Res, $Val extends TarotText>
    implements $TarotTextCopyWith<$Res> {
  _$TarotTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? text = null,
    Object? keywords = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TarotTextCopyWith<$Res> implements $TarotTextCopyWith<$Res> {
  factory _$$_TarotTextCopyWith(
          _$_TarotText value, $Res Function(_$_TarotText) then) =
      __$$_TarotTextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String text, String keywords});
}

/// @nodoc
class __$$_TarotTextCopyWithImpl<$Res>
    extends _$TarotTextCopyWithImpl<$Res, _$_TarotText>
    implements _$$_TarotTextCopyWith<$Res> {
  __$$_TarotTextCopyWithImpl(
      _$_TarotText _value, $Res Function(_$_TarotText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? text = null,
    Object? keywords = null,
  }) {
    return _then(_$_TarotText(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TarotText implements _TarotText {
  const _$_TarotText(
      {required this.name, required this.text, required this.keywords});

  factory _$_TarotText.fromJson(Map<String, dynamic> json) =>
      _$$_TarotTextFromJson(json);

  @override
  final String name;
  @override
  final String text;
  @override
  final String keywords;

  @override
  String toString() {
    return 'TarotText(name: $name, text: $text, keywords: $keywords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TarotText &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.keywords, keywords) ||
                other.keywords == keywords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, text, keywords);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TarotTextCopyWith<_$_TarotText> get copyWith =>
      __$$_TarotTextCopyWithImpl<_$_TarotText>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TarotTextToJson(
      this,
    );
  }
}

abstract class _TarotText implements TarotText {
  const factory _TarotText(
      {required final String name,
      required final String text,
      required final String keywords}) = _$_TarotText;

  factory _TarotText.fromJson(Map<String, dynamic> json) =
      _$_TarotText.fromJson;

  @override
  String get name;
  @override
  String get text;
  @override
  String get keywords;
  @override
  @JsonKey(ignore: true)
  _$$_TarotTextCopyWith<_$_TarotText> get copyWith =>
      throw _privateConstructorUsedError;
}
