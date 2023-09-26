import 'package:witch_army_knife/models/tarot_card.dart';

class TarotDeck {
  TarotDeck();

  final List<TarotCard> majorArcana = [
    TarotCard("0 Fool", "assets/images/tarot/0_Fool.jpeg"),
    TarotCard("1 The Magician", "assets/images/tarot/1_Magician.jpeg"),
    TarotCard(
      "2 The High Priestess",
      "assets/images/tarot/2_High_Priestess.jpeg",
    ),
    TarotCard("3 The Empress", "assets/images/tarot/3_Empress.jpeg"),
    TarotCard("4 The Emperor", "assets/images/tarot/4_Emperor.jpeg"),
    TarotCard("5 The Hierophant", "assets/images/tarot/5_Hierophant.jpeg"),
    TarotCard("6 The Lovers", "assets/images/tarot/6_Lovers.jpeg"),
    TarotCard("7 The Chariot", "assets/images/tarot/7_Chariot.jpeg"),
    TarotCard("8 Strength", "assets/images/tarot/8_Strength.jpeg"),
    TarotCard("9 The Hermit", "assets/images/tarot/9_Hermit.jpeg"),
    TarotCard(
      "10 Wheel of Fortune",
      "assets/images/tarot/10_Wheel_of_Fortune.jpeg",
    ),
    TarotCard("11 Justice", "assets/images/tarot/11_Justice.jpeg"),
    TarotCard("12 The Hanged Man", "assets/images/tarot/12_Hanged_Man.jpeg"),
    TarotCard("13 Death", "assets/images/tarot/13_Death.jpeg"),
    TarotCard("14 Temperance", "assets/images/tarot/14_Temperance.jpeg"),
    TarotCard("15 The Devil", "assets/images/tarot/15_Devil.jpeg"),
    TarotCard("16 The Tower", "assets/images/tarot/16_Tower.jpeg"),
    TarotCard("17 The Star", "assets/images/tarot/17_Star.jpeg"),
    TarotCard("18 The Moon", "assets/images/tarot/18_Moon.jpeg"),
    TarotCard("19 The Sun", "assets/images/tarot/19_Sun.jpeg"),
    TarotCard("20 Judgement", "assets/images/tarot/20_Judgement.jpeg"),
    TarotCard("21 The World", "assets/images/tarot/21_World.jpeg"),
  ];

  final List<TarotCard> wands = [
    TarotCard("Ace of Wands", "assets/images/tarot/Wands01.jpg"),
    TarotCard("Two of Wands", "assets/images/tarot/Wands02.jpg"),
    TarotCard("Three of Wands", "assets/images/tarot/Wands03.jpg"),
    TarotCard("Four of Wands", "assets/images/tarot/Wands04.jpg"),
    TarotCard("Five of Wands", "assets/images/tarot/Wands05.jpg"),
    TarotCard("Six of Wands", "assets/images/tarot/Wands06.jpg"),
    TarotCard("Seven of Wands", "assets/images/tarot/Wands07.jpg"),
    TarotCard("Eight of Wands", "assets/images/tarot/Wands08.jpg"),
    TarotCard("Nine of Wands", "assets/images/tarot/Wands09.jpg"),
    TarotCard("Ten of Wands", "assets/images/tarot/Wands10.jpg"),
    TarotCard("Page of Wands", "assets/images/tarot/Wands11.jpg"),
    TarotCard("Knight of Wands", "assets/images/tarot/Wands12.jpg"),
    TarotCard("Queen of Wands", "assets/images/tarot/Wands13.jpg"),
    TarotCard("King of Wands", "assets/images/tarot/Wands14.jpg"),
  ];

  final List<TarotCard> swords = [
    TarotCard("Ace of Swords", "assets/images/tarot/Swords01.jpg"),
    TarotCard("Two of Swords", "assets/images/tarot/Swords02.jpg"),
    TarotCard("Three of Swords", "assets/images/tarot/Swords03.jpg"),
    TarotCard("Four of Swords", "assets/images/tarot/Swords04.jpg"),
    TarotCard("Five of Swords", "assets/images/tarot/Swords05.jpg"),
    TarotCard("Six of Swords", "assets/images/tarot/Swords06.jpg"),
    TarotCard("Seven of Swords", "assets/images/tarot/Swords07.jpg"),
    TarotCard("Eight of Swords", "assets/images/tarot/Swords08.jpg"),
    TarotCard("Nine of Swords", "assets/images/tarot/Swords09.jpg"),
    TarotCard("Ten of Swords", "assets/images/tarot/Swords10.jpg"),
    TarotCard("Page of Swords", "assets/images/tarot/Swords11.jpg"),
    TarotCard("Knight of Swords", "assets/images/tarot/Swords12.jpg"),
    TarotCard("Queen of Swords", "assets/images/tarot/Swords13.jpg"),
    TarotCard("King of Swords", "assets/images/tarot/Swords14.jpg"),
  ];

  final List<TarotCard> pentacles = [
    TarotCard("Ace of Pentacles", "assets/images/tarot/Pents01.jpg"),
    TarotCard("Two of Pentacles", "assets/images/tarot/Pents02.jpg"),
    TarotCard("Three of Pentacles", "assets/images/tarot/Pents03.jpg"),
    TarotCard("Four of Pentacles", "assets/images/tarot/Pents04.jpg"),
    TarotCard("Five of Pentacles", "assets/images/tarot/Pents05.jpg"),
    TarotCard("Six of Pentacles", "assets/images/tarot/Pents06.jpg"),
    TarotCard("Seven of Pentacles", "assets/images/tarot/Pents07.jpg"),
    TarotCard("Eight of Pentacles", "assets/images/tarot/Pents08.jpg"),
    TarotCard("Nine of Pentacles", "assets/images/tarot/Pents09.jpg"),
    TarotCard("Ten of Pentacles", "assets/images/tarot/Pents10.jpg"),
    TarotCard("Page of Pentacles", "assets/images/tarot/Pents11.jpg"),
    TarotCard("Knight of Pentacles", "assets/images/tarot/Pents12.jpg"),
    TarotCard("Queen of Pentacles", "assets/images/tarot/Pents13.jpg"),
    TarotCard("King of Pentacles", "assets/images/tarot/Pents14.jpg"),
  ];

  final List<TarotCard> cups = [
    TarotCard("Ace of Cups", "assets/images/tarot/Cups01.jpg"),
    TarotCard("Two of Cups", "assets/images/tarot/Cups02.jpg"),
    TarotCard("Three of Cups", "assets/images/tarot/Cups03.jpg"),
    TarotCard("Four of Cups", "assets/images/tarot/Cups04.jpg"),
    TarotCard("Five of Cups", "assets/images/tarot/Cups05.jpg"),
    TarotCard("Six of Cups", "assets/images/tarot/Cups06.jpg"),
    TarotCard("Seven of Cups", "assets/images/tarot/Cups07.jpg"),
    TarotCard("Eight of Cups", "assets/images/tarot/Cups08.jpg"),
    TarotCard("Nine of Cups", "assets/images/tarot/Cups09.jpg"),
    TarotCard("Ten of Cups", "assets/images/tarot/Cups10.jpg"),
    TarotCard("Page of Cups", "assets/images/tarot/Cups11.jpg"),
    TarotCard("Knight of Cups", "assets/images/tarot/Cups12.jpg"),
    TarotCard("Queen of Cups", "assets/images/tarot/Cups13.jpg"),
    TarotCard("King of Cups", "assets/images/tarot/Cups14.jpg"),
  ];

  List<TarotCard> getAllCards() {
    List<TarotCard> card =
        List.of([...majorArcana, ...cups, ...wands, ...swords, ...pentacles]);
    return card;
  }
}
