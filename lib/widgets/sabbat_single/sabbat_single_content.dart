import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/widgets/others/spinner.dart';

class SabbatSingleContent extends StatelessWidget {
  const SabbatSingleContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => dataStore.isLoading
            ? ListView(children: const [Spinner()])
            : getTextList());
  }

  Widget getTextList() {
    List<String> paragraphs = dataStore.sabbatText.text.split('\n');

    return dataStore.selectedSabbat != null
        ? ListView(children: <Widget>[
            Text(
              dataStore.selectedSabbat?.name ?? '',
              style: const TextStyle(fontSize: 48),
            ),
            Text(
              '${dataStore.selectedSabbat?.date.day}.${dataStore.selectedSabbat?.date.month}.${dataStore.selectedSabbat?.date.year}',
              style: const TextStyle(fontSize: 24),
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
                  const SizedBox(height: 20)
                ],
              );
            }).toList()
          ])
        : const Text('Not found');
  }
}
