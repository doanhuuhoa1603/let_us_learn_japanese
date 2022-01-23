import 'package:flutter/material.dart';

class Grammar extends StatelessWidget {
  const Grammar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ngữ pháp'),
      ),
      body: SafeArea(
        child: Text('Ngữ pháp'),
      ),
    );
  }
}