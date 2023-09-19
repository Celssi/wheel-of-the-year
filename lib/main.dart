import 'package:flutter/material.dart';
import 'package:wheel_of_the_year/api/text_api.dart';
import 'package:wheel_of_the_year/pages/home.dart';
import 'package:wheel_of_the_year/stores/navigation_store.dart';
import 'package:wheel_of_the_year/stores/sabbat_store.dart';

final NavigationStore navigationStore = NavigationStore();
final SabbatStore sabbatStore = SabbatStore();
final TextApi textApi = TextApi();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final List<String> imagePaths = [
      "Mabon.jpg",
      "Samhain.jpg",
      "Yule.jpg",
      "Imbolc.jpg",
      "Ostara.jpg",
      "Beltane.jpg",
      "Litha.jpg",
      "Lughnasa.jpg",
    ];

    for (final imagePath in imagePaths) {
      precacheImage(AssetImage("assets/images/$imagePath"), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Wheel of the Year',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
          useMaterial3: true,
          splashColor: Colors.transparent,
          fontFamily: 'Caveat',
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: <TargetPlatform, PageTransitionsBuilder>{
              TargetPlatform.android: ZoomPageTransitionsBuilder(
                allowEnterRouteSnapshotting: false,
              ),
            },
          ),
        ),
        home: const HomePage());
  }
}
