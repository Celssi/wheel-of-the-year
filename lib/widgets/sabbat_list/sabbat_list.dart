import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_blade/main.dart';
import 'package:witch_army_blade/widgets/sabbat_list/sabbat_list_item.dart';

class SabbatList extends StatelessWidget {
  const SabbatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => ListView(
              children: getCards(),
            ));
  }

  List<Widget> getCards() {
    List<Widget> sabbats = List.of([]);
    for (final sabbat in sabbatStore.sabbats) {
      sabbats.add(SabbatListItem(sabbat: sabbat));
    }

    return sabbats;
  }
}
