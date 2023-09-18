class SabbatText {
  SabbatText({
    required this.name,
    required this.paragraphs,
  });

  SabbatText.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        paragraphs = List<String>.from(json['paragraphs']);

  Map<String, dynamic> toJson() => {
        'name': name,
        'paragraphs': paragraphs,
      };

  String name;
  List<String> paragraphs;
}
