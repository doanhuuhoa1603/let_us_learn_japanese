import 'dart:io';

import 'package:flutter/material.dart';
import 'package:let_us_learn_japanese/widgets/narrow_app.dart';
import 'package:let_us_learn_japanese/widgets/wide_app.dart';

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    var targetApp;

    if(Platform.isAndroid || Platform.isIOS || mediaQuery.size.width < 600) {
      targetApp = const NarrowApp();
    }
    else {
      targetApp = const WideApp();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Let\'s learn Japanese'),
      ),
      body: targetApp,
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Menu', style: Theme.of(context).textTheme.headline6)
                ],
              ),
            ),
            ListTile(
              title: const Text('Từ vựng'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/word');
              },
            ),
            ListTile(
              title: const Text('Ngữ pháp'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/grammar');
              },
            ),
            ListTile(
              title: const Text('Random'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/random');
              },
            ),
          ],
        ),
      ),
    );
  }
}