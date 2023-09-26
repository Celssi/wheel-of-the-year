import 'package:flutter/material.dart';
import 'package:witch_army_knife/helpers/sizes.dart';

class CheckConnectionNotification extends StatelessWidget {
  const CheckConnectionNotification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Text(
          'Please check your connection',
          style: TextStyle(fontSize: smallTextSize),
        ),
      ],
    );
  }
}
