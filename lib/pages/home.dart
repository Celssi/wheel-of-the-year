import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:wheel_of_the_year/pages/buttons.dart';
import 'package:wheel_of_the_year/pages/sabbat_display.dart';
import 'package:wheel_of_the_year/pages/sabbat_list.dart';
import 'package:wheel_of_the_year/stores/sabbat_store.dart';

import '../stores/navigation_store.dart';

class HomePage extends StatelessWidget {
  final NavigationStore navigationStore;
  final SabbatStore sabbatStore;

  const HomePage(this.navigationStore, this.sabbatStore, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black87,
          title: const Text('Wheel of the Year',
              style: TextStyle(color: Colors.red, fontSize: 30)),
        ),
        body: Observer(
            builder: (_) => Container(
                child: getActiveWidget(navigationStore.selectedIndex))),
        bottomNavigationBar: Buttons(navigationStore));
  }

  Widget getActiveWidget(int index) {
    switch (index) {
      case 0:
        return SabbatDisplay(sabbatStore);
      case 1:
        return SabbatList(sabbatStore);
    }

    return SabbatDisplay(sabbatStore);
  }
}
