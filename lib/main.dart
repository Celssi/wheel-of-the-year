import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wheel_of_the_year/pages/home.dart';
import 'package:wheel_of_the_year/stores/navigation_store.dart';
import 'package:wheel_of_the_year/stores/sabbat_store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Wheel of the Year',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
            useMaterial3: true,
            splashColor: Colors.transparent,
            fontFamily: 'Caveat'),
        home: MultiProvider(
          providers: [
            Provider<NavigationStore>(create: (_) => NavigationStore()),
            Provider<SabbatStore>(create: (_) => SabbatStore()),
          ],
          child: Consumer2<NavigationStore, SabbatStore>(
            builder: (context, navigationStore, sabbatStore, _) =>
                HomePage(navigationStore, sabbatStore),
          ),
        ));
  }
}
