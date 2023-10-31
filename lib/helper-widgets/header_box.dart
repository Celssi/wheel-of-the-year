import 'package:flutter/material.dart';
import 'package:witch_army_knife/helper-widgets/content_container.dart';
import 'package:witch_army_knife/helpers/sizes.dart';

class HeaderBox extends StatelessWidget {
  const HeaderBox({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ContentContainer(
        child: Center(
          child: Text(
            title,
            style: const TextStyle(fontSize: mainHeaderSize),
          ),
        ),
      ),
    );
  }
}
