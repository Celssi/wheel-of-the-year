import 'package:flutter/material.dart';

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
          style: TextStyle(fontSize: 24),
        ),
      ],
    );
  }
}
