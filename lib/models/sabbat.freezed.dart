// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sabbat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sabbat _$SabbatFromJson(Map<String, dynamic> json) {
  return _Sabbat.fromJson(json);
}

/// @nodoc
mixin _$Sabbat {
  DateTime get date => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SabbatCopyWith<Sabbat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SabbatCopyWith<$Res> {
  factory $SabbatCopyWith(Sabbat value, $Res Function(Sabbat) then) =
      _$SabbatCopyWithImpl<$Res, Sabbat>;
  @useResult
  $Res call({DateTime date, String name});
}

/// @nodoc
class _$SabbatCopyWithImpl<$Res, $Val extends Sabbat>
    implements $SabbatCopyWith<$Res> {
  _$SabbatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SabbatCopyWith<$Res> implements $SabbatCopyWith<$Res> {
  factory _$$_SabbatCopyWith(_$_Sabbat value, $Res Function(_$_Sabbat) then) =
      __$$_SabbatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, String name});
}

/// @nodoc
class __$$_SabbatCopyWithImpl<$Res>
    extends _$SabbatCopyWithImpl<$Res, _$_Sabbat>
    implements _$$_SabbatCopyWith<$Res> {
  __$$_SabbatCopyWithImpl(_$_Sabbat _value, $Res Function(_$_Sabbat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? name = null,
  }) {
    return _then(_$_Sabbat(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sabbat implements _Sabbat {
  const _$_Sabbat({required this.date, required this.name});

  factory _$_Sabbat.fromJson(Map<String, dynamic> json) =>
      _$$_SabbatFromJson(json);

  @override
  final DateTime date;
  @override
  final String name;

  @override
  String toString() {
    return 'Sabbat(date: $date, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sabbat &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SabbatCopyWith<_$_Sabbat> get copyWith =>
      __$$_SabbatCopyWithImpl<_$_Sabbat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SabbatToJson(
      this,
    );
  }
}

abstract class _Sabbat implements Sabbat {
  const factory _Sabbat(
      {required final DateTime date, required final String name}) = _$_Sabbat;

  factory _Sabbat.fromJson(Map<String, dynamic> json) = _$_Sabbat.fromJson;

  @override
  DateTime get date;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_SabbatCopyWith<_$_Sabbat> get copyWith =>
      throw _privateConstructorUsedError;
}
