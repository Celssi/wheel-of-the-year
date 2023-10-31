import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_category.freezed.dart';
part 'library_category.g.dart';

@freezed
class LibraryCategory with _$LibraryCategory {
  const factory LibraryCategory({
    required String name,
    required String id,
  }) = _LibraryCategory;

  factory LibraryCategory.fromJson(Map<String, Object?> json) => _$LibraryCategoryFromJson(json);
}
