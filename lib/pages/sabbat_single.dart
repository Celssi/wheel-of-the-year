import 'package:flutter/material.dart';

import '../models/sabbat.dart';
import 'buttons.dart';

class SabbatSingle extends StatelessWidget {
  const SabbatSingle({
    super.key,
    required this.sabbat,
  });

  final Sabbat sabbat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black87,
          title: const Text('Wheel of the Year',
              style: TextStyle(color: Colors.red, fontSize: 30)),
        ),
        body: Card(
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/${sabbat.name}.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    child: ListView(
                      children: <Widget>[
                        Text(
                          sabbat.name,
                          style: const TextStyle(fontSize: 48),
                        ),
                        Text(
                          '${sabbat.date.day}.${sabbat.date.month}.${sabbat.date.year}',
                          style: const TextStyle(fontSize: 24),
                        ),
                        const SizedBox(height: 28),
                        const Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    )))),
        bottomNavigationBar: const Buttons());
  }
}
