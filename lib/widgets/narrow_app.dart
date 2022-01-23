import 'package:flutter/material.dart';
import 'package:let_us_learn_japanese/widgets/home/home.dart';

class NarrowApp extends StatelessWidget {
  const NarrowApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        Text('This is narrow app'),
        Home()
      ]
    );
  }
}
