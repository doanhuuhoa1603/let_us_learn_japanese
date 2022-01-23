import 'dart:io';

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import './widgets/random/random.dart';
import './widgets/grammar/grammar.dart';
import './widgets/word/word.dart';
import './widgets/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    // TO DO: Thay doi App title
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Let\'s learn Japanese ^_^',
      theme: FlexColorScheme.light(scheme: FlexScheme.aquaBlue).toTheme,
      darkTheme: FlexColorScheme.dark(scheme: FlexScheme.aquaBlue).toTheme,
      themeMode: ThemeMode.system, // Or ThemeMode.System if you'd prefer
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const App(),
        '/grammar': (context) => const Grammar(),
        '/word': (context) => const Word(),
        '/random': (context) => const Random(),
      },
    );
  }
}
