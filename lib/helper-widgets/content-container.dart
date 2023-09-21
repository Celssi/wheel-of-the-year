import 'package:flutter/material.dart';

class ContentContainer extends StatelessWidget {
  const ContentContainer({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: child,
    );
  }
}
