import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:witch_army_knife/api/text_api.dart';
import 'package:witch_army_knife/app-container.dart';
import 'package:witch_army_knife/helpers/sizes.dart';
import 'package:witch_army_knife/stores/data_store.dart';
import 'package:witch_army_knife/stores/settings_store.dart';

final SettingsStore settingsStore = SettingsStore();
final DataStore dataStore = DataStore();
final TextApi textApi = TextApi();

// teema
// ilmoitukset

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
      title: 'Witch Army Knife',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
        splashColor: Colors.transparent,
        textTheme: GoogleFonts.caveatTextTheme().copyWith(
          labelLarge: const TextStyle(fontSize: extraSmallTextSize),
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(
              allowEnterRouteSnapshotting: false,
            ),
          },
        ),
      ),
      home: const AppContainer(),
    );
  }
}
