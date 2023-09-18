import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:wheel_of_the_year/stores/sabbat_store.dart';

import 'sabbat_card.dart';

class SabbatList extends StatelessWidget {
  final SabbatStore sabbatStore;

  const SabbatList(this.sabbatStore, {super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => ListView(
              children: getCards(),
            ));
  }

  List<Widget> getCards() {
    List<Widget> sabbats = List.of([]);
    for (var sabbat in sabbatStore.sabbats) {
      sabbats.add(SabbatCard(sabbat: sabbat));
    }

    return sabbats;
  }
}
