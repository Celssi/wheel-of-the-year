import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/widgets/home/home_display.dart';
import 'package:witch_army_knife/widgets/navigation/bottom_navigation.dart';
import 'package:witch_army_knife/widgets/sabbat_list/sabbat_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black87,
          title: const Text('Witch Army Knife',
              style: TextStyle(color: Colors.red, fontSize: 30)),
        ),
        body: Observer(
            builder: (_) => Container(
                child: getActiveWidget(navigationStore.selectedIndex))),
        bottomNavigationBar: const BottomNavigation());
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
