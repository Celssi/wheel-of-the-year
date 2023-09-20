import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/widgets/home/home_display.dart';
import 'package:witch_army_knife/widgets/sabbat_list/sabbat_list.dart';
import 'package:witch_army_knife/widgets/scaffold/main_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
        body: Observer(
            builder: (_) =>
                Container(child: getActiveWidget(dataStore.selectedTab))),
        showBottomButtons: true);
  }

  Widget getActiveWidget(int index) {
    switch (index) {
      case 0:
        return const HomeDisplay();
      case 1:
        return const SabbatList();
    }

    return const HomeDisplay();
  }
}
