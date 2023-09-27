// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lunar_phase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LunarPhase _$LunarPhaseFromJson(Map<String, dynamic> json) {
  return _LunarPhase.fromJson(json);
}

/// @nodoc
mixin _$LunarPhase {
  String get phaseLabel => throw _privateConstructorUsedError;
  double get start => throw _privateConstructorUsedError;
  double get end => throw _privateConstructorUsedError;
  LunarPhaseName get phaseName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LunarPhaseCopyWith<LunarPhase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LunarPhaseCopyWith<$Res> {
  factory $LunarPhaseCopyWith(
          LunarPhase value, $Res Function(LunarPhase) then) =
      _$LunarPhaseCopyWithImpl<$Res, LunarPhase>;
  @useResult
  $Res call(
      {String phaseLabel, double start, double end, LunarPhaseName phaseName});
}

/// @nodoc
class _$LunarPhaseCopyWithImpl<$Res, $Val extends LunarPhase>
    implements $LunarPhaseCopyWith<$Res> {
  _$LunarPhaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phaseLabel = null,
    Object? start = null,
    Object? end = null,
    Object? phaseName = null,
  }) {
    return _then(_value.copyWith(
      phaseLabel: null == phaseLabel
          ? _value.phaseLabel
          : phaseLabel // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as double,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as double,
      phaseName: null == phaseName
          ? _value.phaseName
          : phaseName // ignore: cast_nullable_to_non_nullable
              as LunarPhaseName,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LunarPhaseCopyWith<$Res>
    implements $LunarPhaseCopyWith<$Res> {
  factory _$$_LunarPhaseCopyWith(
          _$_LunarPhase value, $Res Function(_$_LunarPhase) then) =
      __$$_LunarPhaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String phaseLabel, double start, double end, LunarPhaseName phaseName});
}

/// @nodoc
class __$$_LunarPhaseCopyWithImpl<$Res>
    extends _$LunarPhaseCopyWithImpl<$Res, _$_LunarPhase>
    implements _$$_LunarPhaseCopyWith<$Res> {
  __$$_LunarPhaseCopyWithImpl(
      _$_LunarPhase _value, $Res Function(_$_LunarPhase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phaseLabel = null,
    Object? start = null,
    Object? end = null,
    Object? phaseName = null,
  }) {
    return _then(_$_LunarPhase(
      phaseLabel: null == phaseLabel
          ? _value.phaseLabel
          : phaseLabel // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as double,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as double,
      phaseName: null == phaseName
          ? _value.phaseName
          : phaseName // ignore: cast_nullable_to_non_nullable
              as LunarPhaseName,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LunarPhase implements _LunarPhase {
  const _$_LunarPhase(
      {required this.phaseLabel,
      required this.start,
      required this.end,
      required this.phaseName});

  factory _$_LunarPhase.fromJson(Map<String, dynamic> json) =>
      _$$_LunarPhaseFromJson(json);

  @override
  final String phaseLabel;
  @override
  final double start;
  @override
  final double end;
  @override
  final LunarPhaseName phaseName;

  @override
  String toString() {
    return 'LunarPhase(phaseLabel: $phaseLabel, start: $start, end: $end, phaseName: $phaseName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LunarPhase &&
            (identical(other.phaseLabel, phaseLabel) ||
                other.phaseLabel == phaseLabel) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.phaseName, phaseName) ||
                other.phaseName == phaseName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, phaseLabel, start, end, phaseName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LunarPhaseCopyWith<_$_LunarPhase> get copyWith =>
      __$$_LunarPhaseCopyWithImpl<_$_LunarPhase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LunarPhaseToJson(
      this,
    );
  }
}

abstract class _LunarPhase implements LunarPhase {
  const factory _LunarPhase(
      {required final String phaseLabel,
      required final double start,
      required final double end,
      required final LunarPhaseName phaseName}) = _$_LunarPhase;

  factory _LunarPhase.fromJson(Map<String, dynamic> json) =
      _$_LunarPhase.fromJson;

  @override
  String get phaseLabel;
  @override
  double get start;
  @override
  double get end;
  @override
  LunarPhaseName get phaseName;
  @override
  @JsonKey(ignore: true)
  _$$_LunarPhaseCopyWith<_$_LunarPhase> get copyWith =>
      throw _privateConstructorUsedError;
}
