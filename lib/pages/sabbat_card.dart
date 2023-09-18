import 'package:flutter/material.dart';

import '../models/sabbat.dart';

class SabbatCard extends StatelessWidget {
  const SabbatCard({
    super.key,
    required this.sabbat,
  });

  final Sabbat sabbat;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/${sabbat.name}.jpg'),
            fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.7),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: Column(
          children: <Widget>[
            Text(
              sabbat.name,
              style: const TextStyle(fontSize: 48),
            ),
            Text(
              '${sabbat.date.day}.${sabbat.date.month}.${sabbat.date.year}',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    ));
  }
}
