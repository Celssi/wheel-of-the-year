import 'package:flutter/material.dart';
import 'package:witch_army_knife/helper-widgets/background_container.dart';
import 'package:witch_army_knife/helper-widgets/content_container.dart';
import 'package:witch_army_knife/helper-widgets/main_scaffold.dart';
import 'package:witch_army_knife/helpers/sizes.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/models/library_text.dart';

class LibraryTextSingle extends StatelessWidget {
  const LibraryTextSingle({
    required this.libraryText,
    super.key,
  });

  final LibraryText libraryText;

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      title: dataStore.selectedCategory!.name,
      body: SizedBox(
        width: double.infinity,
        child: Card(
          child: BackgroundContainer(
            backgroundImage: 'assets/images/${libraryText.name}.png',
            child: ContentContainer(
              child: ListView(
                children: <Widget>[
                  Text(
                    libraryText.name,
                    style: const TextStyle(fontSize: mainHeaderSize),
                  ),
                  const SizedBox(height: normalGap),
                  ...libraryText.text.split('\n\n').map((p) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          p,
                          style: const TextStyle(fontSize: smallTextSize),
                        ),
                        const SizedBox(height: normalGap),
                      ],
                    );
                  }).toList(),
                  const Text(
                    'Keywords',
                    style: TextStyle(fontSize: smallTextSize, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: smallGap),
                  Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    children: [
                      ...libraryText.keywords.split(', ').map((keyword) {
                        return Chip(
                          visualDensity: VisualDensity.compact,
                          label: Text(keyword),
                        );
                      }),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      showBottomButtons: false,
    );
  }
}
