import 'package:flutter/material.dart';
import 'package:witch_army_knife/helper-widgets/bottom_navigation.dart';
import 'package:witch_army_knife/helpers/sizes.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold({
    required this.body,
    required this.showBottomButtons,
    super.key,
  });

  final Widget body;
  final bool showBottomButtons;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black87,
        iconTheme: const IconThemeData(
          color: Colors.red,
        ),
        title: const Text(
          'Witch Army Knife',
          style: TextStyle(color: Colors.red, fontSize: textSize),
        ),
      ),
      body: body,
      bottomNavigationBar: showBottomButtons ? const BottomNavigation() : null,
    );
  }
}
