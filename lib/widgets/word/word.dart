import 'package:flutter/material.dart';

class Word extends StatelessWidget {
  const Word({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Từ vựng'),
      ),
      body: SafeArea(
        child: Text('Từ vựng'),
      ),
    );
  }
}