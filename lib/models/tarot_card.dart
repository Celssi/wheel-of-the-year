import 'package:freezed_annotation/freezed_annotation.dart';

part 'tarot_card.freezed.dart';
part 'tarot_card.g.dart';

@freezed
class TarotCard with _$TarotCard {
  const factory TarotCard({required String name, required String imagePath}) = _TarotCard;

  factory TarotCard.fromJson(Map<String, dynamic> json) => _$TarotCardFromJson(json);
}
