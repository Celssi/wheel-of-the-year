import 'package:flutter/material.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/models/sabbat.dart';
import 'package:witch_army_knife/pages/sabbat_single.dart';

class SabbatListItem extends StatelessWidget {
  const SabbatListItem({
    required this.sabbat,
    super.key,
  });

  final Sabbat sabbat;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.red,
      onTap: () {
        dataStore.setSelectedSabbat(sabbat);
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const SabbatSingle(),
        ));
      },
      child: Hero(
        tag: sabbat.name,
        child: Card(
          child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/${sabbat.name}.png'),
                    fit: BoxFit.cover),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
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
              )),
        ),
      ),
    );
  }
}
