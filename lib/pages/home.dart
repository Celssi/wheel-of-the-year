import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:wheel_of_the_year/main.dart';
import 'package:wheel_of_the_year/widgets/buttons.dart';
import 'package:wheel_of_the_year/widgets/sabbat_display.dart';
import 'package:wheel_of_the_year/widgets/sabbat_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        bottomNavigationBar: const Buttons());
  }

  Widget getActiveWidget(int index) {
    switch (index) {
      case 0:
        return const SabbatDisplay();
      case 1:
        return const SabbatList();
    }

    return const SabbatDisplay();
  }
}
