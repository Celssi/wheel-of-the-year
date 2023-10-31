import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_text.freezed.dart';
part 'library_text.g.dart';

@freezed
class LibraryText with _$LibraryText {
  const factory LibraryText({
    required String name,
    required String text,
    required String category,
    required String keywords,
  }) = _LibraryText;

  factory LibraryText.fromJson(Map<String, Object?> json) => _$LibraryTextFromJson(json);
}
