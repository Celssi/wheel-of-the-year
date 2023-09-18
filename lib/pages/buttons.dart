import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../main.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Colors.white,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.list),
                  label: 'Sabbats',
                  backgroundColor: Colors.white,
                ),
              ],
              currentIndex: navigationStore.selectedIndex,
              selectedItemColor: Colors.red,
              selectedFontSize: 16,
              unselectedFontSize: 16,
              unselectedItemColor: Colors.white,
              backgroundColor: Colors.black87,
              iconSize: 30,
              selectedLabelStyle: const TextStyle(fontFamily: 'roboto'),
              unselectedLabelStyle: const TextStyle(fontFamily: 'roboto'),
              onTap: (int index) => navigationStore.setSelectedIndex(index),
            ));
  }
}
