import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/helper-widgets/spinner.dart';
import 'package:witch_army_knife/helpers/sizes.dart';
import 'package:witch_army_knife/main.dart';

class SabbatSingleContent extends StatelessWidget {
  const SabbatSingleContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => dataStore.isLoading
          ? ListView(children: const [Spinner()])
          : dataStore.selectedSabbat != null
              ? ListView(
                  children: <Widget>[
                    Text(
                      dataStore.selectedSabbat?.name ?? '',
                      style: const TextStyle(fontSize: mainHeaderSize),
                    ),
                    Text(
                      '${dataStore.selectedSabbat?.date.day}.${dataStore.selectedSabbat?.date.month}.${dataStore.selectedSabbat?.date.year}',
                      style: const TextStyle(fontSize: smallTextSize),
                    ),
                    const SizedBox(height: bigGap),
                    ...dataStore.sabbatText.text.split('\n').map((p) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            p,
                            style: const TextStyle(fontSize: smallTextSize),
                          ),
                          const SizedBox(height: normalGap),
                        ],
                      );
                    }).toList(),
                  ],
                )
              : const Text('Not found'),
    );
  }
}
