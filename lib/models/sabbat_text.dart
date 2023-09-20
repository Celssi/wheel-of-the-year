import 'package:freezed_annotation/freezed_annotation.dart';

part 'sabbat_text.freezed.dart';
part 'sabbat_text.g.dart';

@freezed
class SabbatText with _$SabbatText {
  const factory SabbatText({
    required String name,
    required String text,
  }) = _SabbatText;

  factory SabbatText.fromJson(Map<String, Object?> json) =>
      _$SabbatTextFromJson(json);
}
