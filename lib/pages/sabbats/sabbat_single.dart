import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/check_connection_notification.dart';
import 'package:witch_army_knife/helper-widgets/background-container.dart';
import 'package:witch_army_knife/helper-widgets/content-container.dart';
import 'package:witch_army_knife/helper-widgets/main_scaffold.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/pages/sabbats/sabbat_single/sabbat_single_content.dart';

class SabbatSingle extends StatelessWidget {
  const SabbatSingle({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: Hero(
        tag: dataStore.selectedSabbat?.name ?? '',
        child: Observer(
            builder: (_) => Card(
                child: BackgroundContainer(
                    backgroundImage:
                        'assets/images/${dataStore.selectedSabbat?.name}.png',
                    child: ContentContainer(
                        child: dataStore.hasInternet
                            ? const SabbatSingleContent()
                            : const CheckConnectionNotification())))),
      ),
      showBottomButtons: false,
    );
  }
}
