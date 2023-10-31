import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({
    required this.child,
    required this.backgroundImage,
    super.key,
  });

  final Widget child;
  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          onError: (exception, stackTrace) {},
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
