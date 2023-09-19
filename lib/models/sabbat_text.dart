import 'package:freezed_annotation/freezed_annotation.dart';

part 'sabbat_text.freezed.dart';
part 'sabbat_text.g.dart';

@freezed
class SabbatText with _$SabbatText {
  const factory SabbatText({
    required String name,
    required List<String> paragraphs,
  }) = _SabbatText;

  factory SabbatText.fromJson(Map<String, Object?> json) =>
      _$SabbatTextFromJson(json);
}
