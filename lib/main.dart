import 'package:flutter/material.dart';
import 'package:witch_army_blade/api/text_api.dart';
import 'package:witch_army_blade/pages/home.dart';
import 'package:witch_army_blade/stores/navigation_store.dart';
import 'package:witch_army_blade/stores/sabbat_store.dart';

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
      "Mabon.png",
      "Samhain.png",
      "Yule.png",
      "Imbolc.png",
      "Ostara.png",
      "Beltane.png",
      "Litha.png",
      "Lughnasa.png",
    ];

    for (final imagePath in imagePaths) {
      precacheImage(AssetImage("assets/images/$imagePath"), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Witch Army Blade',
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
