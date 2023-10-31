import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/helper-widgets/background_container.dart';
import 'package:witch_army_knife/helper-widgets/check_connection_notification.dart';
import 'package:witch_army_knife/helper-widgets/content_container.dart';
import 'package:witch_army_knife/helper-widgets/main_scaffold.dart';
import 'package:witch_army_knife/helper-widgets/spinner.dart';
import 'package:witch_army_knife/helpers/sizes.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/pages/library/library_text_single.dart';

class LibraryCategorySingle extends StatelessWidget {
  const LibraryCategorySingle({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      title: dataStore.selectedCategory!.name,
      body: Hero(
        tag: dataStore.selectedCategory?.id ?? '',
        child: Observer(
          builder: (_) => Card(
            child: dataStore.isLoading
                ? ListView(children: const [Spinner()])
                : BackgroundContainer(
                    backgroundImage: 'assets/images/${dataStore.selectedCategory?.id}.png',
                    child: ContentContainer(
                      child: dataStore.hasInternet
                          ? ListView(
                              children: [
                                ...dataStore.libraryTexts
                                    .map(
                                      (text) => InkWell(
                                        splashColor: Colors.red,
                                        onTap: () {
                                          dataStore.setSelectedLibraryText(text);
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => LibraryTextSingle(libraryText: text),
                                            ),
                                          );
                                        },
                                        child: Card(
                                          child: BackgroundContainer(
                                            backgroundImage: 'assets/images/${text.name}.png',
                                            child: ContentContainer(
                                              child: Text(
                                                text.name,
                                                style: const TextStyle(fontSize: subHeaderSize),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ],
                            )
                          : const CheckConnectionNotification(),
                    ),
                  ),
          ),
        ),
      ),
      showBottomButtons: false,
    );
  }
}
