import 'package:flutter/material.dart';

class Random extends StatelessWidget {
  const Random({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random'),
      ),
      body: SafeArea(
        child: Text('Random'),
      ),
    );
  }
}