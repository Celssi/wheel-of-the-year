import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/helper-widgets/background-container.dart';
import 'package:witch_army_knife/helper-widgets/check_connection_notification.dart';
import 'package:witch_army_knife/helper-widgets/content-container.dart';
import 'package:witch_army_knife/helper-widgets/main_scaffold.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/pages/tarot/tarot_single_content.dart';

class TarotSingle extends StatelessWidget {
  const TarotSingle({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: Hero(
        tag: dataStore.selectedTarotCard?.name ?? '',
        child: Observer(
            builder: (_) =>
                Card(
                    child: BackgroundContainer(
                        backgroundImage:
                        '${dataStore.selectedTarotCard?.imagePath}',
                        child: ContentContainer(
                            child: dataStore.hasInternet
                                ? const TarotSingleContent()
                                : const CheckConnectionNotification())))),
      ),
      showBottomButtons: false,
    );
  }
}
