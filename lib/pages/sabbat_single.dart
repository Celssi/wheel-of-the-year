import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/widgets/sabbat_single/sabbat_single_content.dart';
import 'package:witch_army_knife/widgets/scaffold/main_scaffold.dart';

class SabbatSingle extends StatelessWidget {
  const SabbatSingle({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: Hero(
        tag: dataStore.selectedSabbat?.name ?? '',
        child: Observer(
            builder: (_) => Card(
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/${dataStore.selectedSabbat?.name}.png'),
                          fit: BoxFit.cover),
                    ),
                    child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                        ),
                        child: dataStore.hasInternet
                            ? const SabbatSingleContent()
                            : getCheckConnection())))),
      ),
      showBottomButtons: false,
    );
  }

  Widget getCheckConnection() {
    return ListView(
      children: const [
        Text(
          'Please check your connection',
          style: TextStyle(fontSize: 24),
        )
      ],
    );
  }
}
