// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LibraryText _$LibraryTextFromJson(Map<String, dynamic> json) {
  return _LibraryText.fromJson(json);
}

/// @nodoc
mixin _$LibraryText {
  String get name => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get keywords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LibraryTextCopyWith<LibraryText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryTextCopyWith<$Res> {
  factory $LibraryTextCopyWith(
          LibraryText value, $Res Function(LibraryText) then) =
      _$LibraryTextCopyWithImpl<$Res, LibraryText>;
  @useResult
  $Res call({String name, String text, String category, String keywords});
}

/// @nodoc
class _$LibraryTextCopyWithImpl<$Res, $Val extends LibraryText>
    implements $LibraryTextCopyWith<$Res> {
  _$LibraryTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? text = null,
    Object? category = null,
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
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LibraryTextCopyWith<$Res>
    implements $LibraryTextCopyWith<$Res> {
  factory _$$_LibraryTextCopyWith(
          _$_LibraryText value, $Res Function(_$_LibraryText) then) =
      __$$_LibraryTextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String text, String category, String keywords});
}

/// @nodoc
class __$$_LibraryTextCopyWithImpl<$Res>
    extends _$LibraryTextCopyWithImpl<$Res, _$_LibraryText>
    implements _$$_LibraryTextCopyWith<$Res> {
  __$$_LibraryTextCopyWithImpl(
      _$_LibraryText _value, $Res Function(_$_LibraryText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? text = null,
    Object? category = null,
    Object? keywords = null,
  }) {
    return _then(_$_LibraryText(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
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
class _$_LibraryText implements _LibraryText {
  const _$_LibraryText(
      {required this.name,
      required this.text,
      required this.category,
      required this.keywords});

  factory _$_LibraryText.fromJson(Map<String, dynamic> json) =>
      _$$_LibraryTextFromJson(json);

  @override
  final String name;
  @override
  final String text;
  @override
  final String category;
  @override
  final String keywords;

  @override
  String toString() {
    return 'LibraryText(name: $name, text: $text, category: $category, keywords: $keywords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LibraryText &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.keywords, keywords) ||
                other.keywords == keywords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, text, category, keywords);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LibraryTextCopyWith<_$_LibraryText> get copyWith =>
      __$$_LibraryTextCopyWithImpl<_$_LibraryText>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LibraryTextToJson(
      this,
    );
  }
}

abstract class _LibraryText implements LibraryText {
  const factory _LibraryText(
      {required final String name,
      required final String text,
      required final String category,
      required final String keywords}) = _$_LibraryText;

  factory _LibraryText.fromJson(Map<String, dynamic> json) =
      _$_LibraryText.fromJson;

  @override
  String get name;
  @override
  String get text;
  @override
  String get category;
  @override
  String get keywords;
  @override
  @JsonKey(ignore: true)
  _$$_LibraryTextCopyWith<_$_LibraryText> get copyWith =>
      throw _privateConstructorUsedError;
}
