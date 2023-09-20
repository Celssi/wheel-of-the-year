import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/widgets/home/moon_card.dart';
import 'package:witch_army_knife/widgets/home/sabbat_card.dart';

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
                        'assets/images/${sabbatStore.closestName}.png'),
                    fit: BoxFit.cover),
              ),
              child: ListView(
                children: const [
                  SabbatCard(),
                  SizedBox(
                    height: 20,
                  ),
                  MoonCard()
                ],
              ),
            ));
  }
}
