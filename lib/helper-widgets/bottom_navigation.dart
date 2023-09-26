import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/main.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
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
          BottomNavigationBarItem(
            icon: Icon(Icons.web_stories),
            label: 'Tarot',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: dataStore.selectedTab,
        selectedItemColor: Colors.red,
        selectedFontSize: 16,
        unselectedFontSize: 16,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black87,
        iconSize: 30,
        selectedLabelStyle: const TextStyle(fontFamily: 'roboto'),
        unselectedLabelStyle: const TextStyle(fontFamily: 'roboto'),
        onTap: (int index) => dataStore.setSelectedTab(index),
      ),
    );
  }
}
