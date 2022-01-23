import 'package:flutter/material.dart';

import 'home/home.dart';

class WideApp extends StatelessWidget {
  const WideApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        Text('This is wide app'),
        Home()
      ]
    );
  }
}
