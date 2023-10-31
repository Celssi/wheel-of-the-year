import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/helper-widgets/background_container.dart';
import 'package:witch_army_knife/helper-widgets/content_container.dart';
import 'package:witch_army_knife/helpers/sizes.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/pages/library/library_category_single.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => BackgroundContainer(
        backgroundImage: 'assets/images/${dataStore.closestSabbatName}.png',
        child: ListView(
          children: dataStore.libraryCategories
              .map(
                (category) => InkWell(
                  splashColor: Colors.red,
                  onTap: () {
                    dataStore.setSelectedLibraryCategory(category);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LibraryCategorySingle(),
                      ),
                    );
                  },
                  child: Hero(
                    tag: category.id,
                    child: Card(
                      child: BackgroundContainer(
                        backgroundImage: 'assets/images/${category.id}.png',
                        child: ContentContainer(
                          child: Text(
                            category.name,
                            style: const TextStyle(fontSize: subHeaderSize),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
