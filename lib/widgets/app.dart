import 'dart:io';

import 'package:flutter/material.dart';
import '../widgets/grammar/grammar.dart';
import '../widgets/random/random.dart';
import '../widgets/narrow_app.dart';
import '../widgets/wide_app.dart';
import '../widgets/word/word.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final AppBar appBar = AppBar(
      title: const Text('Let\'s learn Japanese'),
    );

    if (Platform.isAndroid || Platform.isIOS || mediaQuery.size.width < 600) {
      return NarrowApp(
        appBar: appBar,
      );
    } else {
      return WideApp(
        appBar: appBar,
      );
    }
  }
}
