import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/helper-widgets/background-container.dart';
import 'package:witch_army_knife/helper-widgets/content-container.dart';
import 'package:witch_army_knife/helper-widgets/main_scaffold.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/pages/home/moon_single_content.dart';

class MoonSingle extends StatelessWidget {
  const MoonSingle({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: Observer(
        builder: (_) => Card(
            child: BackgroundContainer(
                backgroundImage:
                    'assets/images/${dataStore.selectedSabbat?.name}.png',
                child: const ContentContainer(child: MoonSingleContent()))),
      ),
      showBottomButtons: false,
    );
  }
}
