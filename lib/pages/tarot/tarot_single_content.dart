import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/helper-widgets/spinner.dart';
import 'package:witch_army_knife/main.dart';

class TarotSingleContent extends StatelessWidget {
  const TarotSingleContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => dataStore.isLoading
          ? ListView(children: const [Spinner()])
          : getTextList(),
    );
  }

  Widget getTextList() {
    List<String> paragraphs = dataStore.tarotText.text.split('\n');

    return dataStore.selectedTarotCard != null
        ? ListView(
            children: <Widget>[
              Text(
                dataStore.selectedTarotCard?.name ?? '',
                style: const TextStyle(fontSize: 48),
              ),
              const SizedBox(height: 28),
              ...paragraphs.map((p) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      p,
                      style: const TextStyle(fontSize: 24),
                    ),
                    const SizedBox(height: 20),
                  ],
                );
              }).toList(),
              const Text(
                'Keywords',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 5,
                runSpacing: 5,
                children: [
                  ...dataStore.tarotText.keywords.split(', ').map((keyword) {
                    return Chip(
                      visualDensity: VisualDensity.compact,
                      label: Text(keyword),
                    );
                  }),
                ],
              ),
            ],
          )
        : const Text('Not found');
  }
}
