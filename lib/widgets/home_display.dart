import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_blade/main.dart';
import 'package:witch_army_blade/widgets/moon_display.dart';
import 'package:witch_army_blade/widgets/sabbat_display.dart';

class HomeDisplay extends StatelessWidget {
  const HomeDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
              constraints: const BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/${sabbatStore.closestName}.jpg'),
                    fit: BoxFit.cover),
              ),
              child: ListView(
                children: const [
                  SabbatDisplay(),
                  SizedBox(
                    height: 20,
                  ),
                  MoonDisplay()
                ],
              ),
            ));
  }
}
