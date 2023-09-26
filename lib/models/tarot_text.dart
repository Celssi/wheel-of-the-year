import 'package:freezed_annotation/freezed_annotation.dart';

part 'tarot_text.freezed.dart';
part 'tarot_text.g.dart';

@freezed
class TarotText with _$TarotText {
  const factory TarotText({
    required String name,
    required String text,
    required String keywords,
  }) = _TarotText;

  factory TarotText.fromJson(Map<String, Object?> json) =>
      _$TarotTextFromJson(json);
}
