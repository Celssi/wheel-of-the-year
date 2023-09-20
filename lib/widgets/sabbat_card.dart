import 'package:flutter/material.dart';
import 'package:witch_army_blade/models/sabbat.dart';
import 'package:witch_army_blade/pages/sabbat_single.dart';

class SabbatCard extends StatelessWidget {
  const SabbatCard({
    required this.sabbat,
    super.key,
  });

  final Sabbat sabbat;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.red,
      onTap: () => {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SabbatSingle(sabbat: sabbat),
        ))
      },
      child: Hero(
        tag: sabbat.name,
        child: Card(
          child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/${sabbat.name}.jpg'),
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
