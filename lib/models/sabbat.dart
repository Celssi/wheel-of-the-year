import 'package:freezed_annotation/freezed_annotation.dart';

part 'sabbat.freezed.dart';
part 'sabbat.g.dart';

@freezed
class Sabbat with _$Sabbat {
  const factory Sabbat({
    required DateTime date,
    required String name,
  }) = _Sabbat;

  factory Sabbat.fromJson(Map<String, dynamic> json) => _$SabbatFromJson(json);
}
