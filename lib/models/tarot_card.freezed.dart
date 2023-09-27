// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tarot_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TarotCard _$TarotCardFromJson(Map<String, dynamic> json) {
  return _TarotCard.fromJson(json);
}

/// @nodoc
mixin _$TarotCard {
  String get name => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TarotCardCopyWith<TarotCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TarotCardCopyWith<$Res> {
  factory $TarotCardCopyWith(TarotCard value, $Res Function(TarotCard) then) =
      _$TarotCardCopyWithImpl<$Res, TarotCard>;
  @useResult
  $Res call({String name, String imagePath});
}

/// @nodoc
class _$TarotCardCopyWithImpl<$Res, $Val extends TarotCard>
    implements $TarotCardCopyWith<$Res> {
  _$TarotCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imagePath = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TarotCardCopyWith<$Res> implements $TarotCardCopyWith<$Res> {
  factory _$$_TarotCardCopyWith(
          _$_TarotCard value, $Res Function(_$_TarotCard) then) =
      __$$_TarotCardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String imagePath});
}

/// @nodoc
class __$$_TarotCardCopyWithImpl<$Res>
    extends _$TarotCardCopyWithImpl<$Res, _$_TarotCard>
    implements _$$_TarotCardCopyWith<$Res> {
  __$$_TarotCardCopyWithImpl(
      _$_TarotCard _value, $Res Function(_$_TarotCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imagePath = null,
  }) {
    return _then(_$_TarotCard(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TarotCard implements _TarotCard {
  const _$_TarotCard({required this.name, required this.imagePath});

  factory _$_TarotCard.fromJson(Map<String, dynamic> json) =>
      _$$_TarotCardFromJson(json);

  @override
  final String name;
  @override
  final String imagePath;

  @override
  String toString() {
    return 'TarotCard(name: $name, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TarotCard &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TarotCardCopyWith<_$_TarotCard> get copyWith =>
      __$$_TarotCardCopyWithImpl<_$_TarotCard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TarotCardToJson(
      this,
    );
  }
}

abstract class _TarotCard implements TarotCard {
  const factory _TarotCard(
      {required final String name,
      required final String imagePath}) = _$_TarotCard;

  factory _TarotCard.fromJson(Map<String, dynamic> json) =
      _$_TarotCard.fromJson;

  @override
  String get name;
  @override
  String get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$_TarotCardCopyWith<_$_TarotCard> get copyWith =>
      throw _privateConstructorUsedError;
}
