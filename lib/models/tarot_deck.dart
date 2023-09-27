import 'package:witch_army_knife/models/tarot_card.dart';

class TarotDeck {
  TarotDeck();

  final List<TarotCard> majorArcana = [
    const TarotCard(name: "0 Fool", imagePath: "assets/images/tarot/0_Fool.jpeg"),
    const TarotCard(name: "1 The Magician", imagePath: "assets/images/tarot/1_Magician.jpeg"),
    const TarotCard(
      name: "2 The High Priestess",
      imagePath: "assets/images/tarot/2_High_Priestess.jpeg",
    ),
    const TarotCard(name: "3 The Empress", imagePath: "assets/images/tarot/3_Empress.jpeg"),
    const TarotCard(name: "4 The Emperor", imagePath: "assets/images/tarot/4_Emperor.jpeg"),
    const TarotCard(name: "5 The Hierophant", imagePath: "assets/images/tarot/5_Hierophant.jpeg"),
    const TarotCard(name: "6 The Lovers", imagePath: "assets/images/tarot/6_Lovers.jpeg"),
    const TarotCard(name: "7 The Chariot", imagePath: "assets/images/tarot/7_Chariot.jpeg"),
    const TarotCard(name: "8 Strength", imagePath: "assets/images/tarot/8_Strength.jpeg"),
    const TarotCard(name: "9 The Hermit", imagePath: "assets/images/tarot/9_Hermit.jpeg"),
    const TarotCard(
      name: "10 Wheel of Fortune",
      imagePath: "assets/images/tarot/10_Wheel_of_Fortune.jpeg",
    ),
    const TarotCard(name: "11 Justice", imagePath: "assets/images/tarot/11_Justice.jpeg"),
    const TarotCard(name: "12 The Hanged Man", imagePath: "assets/images/tarot/12_Hanged_Man.jpeg"),
    const TarotCard(name: "13 Death", imagePath: "assets/images/tarot/13_Death.jpeg"),
    const TarotCard(name: "14 Temperance", imagePath: "assets/images/tarot/14_Temperance.jpeg"),
    const TarotCard(name: "15 The Devil", imagePath: "assets/images/tarot/15_Devil.jpeg"),
    const TarotCard(name: "16 The Tower", imagePath: "assets/images/tarot/16_Tower.jpeg"),
    const TarotCard(name: "17 The Star", imagePath: "assets/images/tarot/17_Star.jpeg"),
    const TarotCard(name: "18 The Moon", imagePath: "assets/images/tarot/18_Moon.jpeg"),
    const TarotCard(name: "19 The Sun", imagePath: "assets/images/tarot/19_Sun.jpeg"),
    const TarotCard(name: "20 Judgement", imagePath: "assets/images/tarot/20_Judgement.jpeg"),
    const TarotCard(name: "21 The World", imagePath: "assets/images/tarot/21_World.jpeg"),
  ];

  final List<TarotCard> wands = [
    const TarotCard(name: "Ace of Wands", imagePath: "assets/images/tarot/Wands01.jpg"),
    const TarotCard(name: "Two of Wands", imagePath: "assets/images/tarot/Wands02.jpg"),
    const TarotCard(name: "Three of Wands", imagePath: "assets/images/tarot/Wands03.jpg"),
    const TarotCard(name: "Four of Wands", imagePath: "assets/images/tarot/Wands04.jpg"),
    const TarotCard(name: "Five of Wands", imagePath: "assets/images/tarot/Wands05.jpg"),
    const TarotCard(name: "Six of Wands", imagePath: "assets/images/tarot/Wands06.jpg"),
    const TarotCard(name: "Seven of Wands", imagePath: "assets/images/tarot/Wands07.jpg"),
    const TarotCard(name: "Eight of Wands", imagePath: "assets/images/tarot/Wands08.jpg"),
    const TarotCard(name: "Nine of Wands", imagePath: "assets/images/tarot/Wands09.jpg"),
    const TarotCard(name: "Ten of Wands", imagePath: "assets/images/tarot/Wands10.jpg"),
    const TarotCard(name: "Page of Wands", imagePath: "assets/images/tarot/Wands11.jpg"),
    const TarotCard(name: "Knight of Wands", imagePath: "assets/images/tarot/Wands12.jpg"),
    const TarotCard(name: "Queen of Wands", imagePath: "assets/images/tarot/Wands13.jpg"),
    const TarotCard(name: "King of Wands", imagePath: "assets/images/tarot/Wands14.jpg"),
  ];

  final List<TarotCard> swords = [
    const TarotCard(name: "Ace of Swords", imagePath: "assets/images/tarot/Swords01.jpg"),
    const TarotCard(name: "Two of Swords", imagePath: "assets/images/tarot/Swords02.jpg"),
    const TarotCard(name: "Three of Swords", imagePath: "assets/images/tarot/Swords03.jpg"),
    const TarotCard(name: "Four of Swords", imagePath: "assets/images/tarot/Swords04.jpg"),
    const TarotCard(name: "Five of Swords", imagePath: "assets/images/tarot/Swords05.jpg"),
    const TarotCard(name: "Six of Swords", imagePath: "assets/images/tarot/Swords06.jpg"),
    const TarotCard(name: "Seven of Swords", imagePath: "assets/images/tarot/Swords07.jpg"),
    const TarotCard(name: "Eight of Swords", imagePath: "assets/images/tarot/Swords08.jpg"),
    const TarotCard(name: "Nine of Swords", imagePath: "assets/images/tarot/Swords09.jpg"),
    const TarotCard(name: "Ten of Swords", imagePath: "assets/images/tarot/Swords10.jpg"),
    const TarotCard(name: "Page of Swords", imagePath: "assets/images/tarot/Swords11.jpg"),
    const TarotCard(name: "Knight of Swords", imagePath: "assets/images/tarot/Swords12.jpg"),
    const TarotCard(name: "Queen of Swords", imagePath: "assets/images/tarot/Swords13.jpg"),
    const TarotCard(name: "King of Swords", imagePath: "assets/images/tarot/Swords14.jpg"),
  ];

  final List<TarotCard> pentacles = [
    const TarotCard(name: "Ace of Pentacles", imagePath: "assets/images/tarot/Pents01.jpg"),
    const TarotCard(name: "Two of Pentacles", imagePath: "assets/images/tarot/Pents02.jpg"),
    const TarotCard(name: "Three of Pentacles", imagePath: "assets/images/tarot/Pents03.jpg"),
    const TarotCard(name: "Four of Pentacles", imagePath: "assets/images/tarot/Pents04.jpg"),
    const TarotCard(name: "Five of Pentacles", imagePath: "assets/images/tarot/Pents05.jpg"),
    const TarotCard(name: "Six of Pentacles", imagePath: "assets/images/tarot/Pents06.jpg"),
    const TarotCard(name: "Seven of Pentacles", imagePath: "assets/images/tarot/Pents07.jpg"),
    const TarotCard(name: "Eight of Pentacles", imagePath: "assets/images/tarot/Pents08.jpg"),
    const TarotCard(name: "Nine of Pentacles", imagePath: "assets/images/tarot/Pents09.jpg"),
    const TarotCard(name: "Ten of Pentacles", imagePath: "assets/images/tarot/Pents10.jpg"),
    const TarotCard(name: "Page of Pentacles", imagePath: "assets/images/tarot/Pents11.jpg"),
    const TarotCard(name: "Knight of Pentacles", imagePath: "assets/images/tarot/Pents12.jpg"),
    const TarotCard(name: "Queen of Pentacles", imagePath: "assets/images/tarot/Pents13.jpg"),
    const TarotCard(name: "King of Pentacles", imagePath: "assets/images/tarot/Pents14.jpg"),
  ];

  final List<TarotCard> cups = [
    const TarotCard(name: "Ace of Cups", imagePath: "assets/images/tarot/Cups01.jpg"),
    const TarotCard(name: "Two of Cups", imagePath: "assets/images/tarot/Cups02.jpg"),
    const TarotCard(name: "Three of Cups", imagePath: "assets/images/tarot/Cups03.jpg"),
    const TarotCard(name: "Four of Cups", imagePath: "assets/images/tarot/Cups04.jpg"),
    const TarotCard(name: "Five of Cups", imagePath: "assets/images/tarot/Cups05.jpg"),
    const TarotCard(name: "Six of Cups", imagePath: "assets/images/tarot/Cups06.jpg"),
    const TarotCard(name: "Seven of Cups", imagePath: "assets/images/tarot/Cups07.jpg"),
    const TarotCard(name: "Eight of Cups", imagePath: "assets/images/tarot/Cups08.jpg"),
    const TarotCard(name: "Nine of Cups", imagePath: "assets/images/tarot/Cups09.jpg"),
    const TarotCard(name: "Ten of Cups", imagePath: "assets/images/tarot/Cups10.jpg"),
    const TarotCard(name: "Page of Cups", imagePath: "assets/images/tarot/Cups11.jpg"),
    const TarotCard(name: "Knight of Cups", imagePath: "assets/images/tarot/Cups12.jpg"),
    const TarotCard(name: "Queen of Cups", imagePath: "assets/images/tarot/Cups13.jpg"),
    const TarotCard(name: "King of Cups", imagePath: "assets/images/tarot/Cups14.jpg"),
  ];

  List<TarotCard> getAllCards() {
    List<TarotCard> card = List.of([...majorArcana, ...cups, ...wands, ...swords, ...pentacles]);
    return card;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TarotDeck &&
          runtimeType == other.runtimeType &&
          majorArcana == other.majorArcana &&
          wands == other.wands &&
          swords == other.swords &&
          pentacles == other.pentacles &&
          cups == other.cups;

  @override
  int get hashCode => majorArcana.hashCode ^ wands.hashCode ^ swords.hashCode ^ pentacles.hashCode ^ cups.hashCode;
}
