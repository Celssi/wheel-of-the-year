import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/helper-widgets/main_scaffold.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/pages/home/home.dart';
import 'package:witch_army_knife/pages/sabbats/sabbats.dart';

class AppContainer extends StatelessWidget {
  const AppContainer({super.key});

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
        return const Home();
      case 1:
        return const Sabbats();
    }

    return const Home();
  }
}
