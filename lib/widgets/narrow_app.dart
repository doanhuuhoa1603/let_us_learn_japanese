import 'package:flutter/material.dart';
import 'package:let_us_learn_japanese/models/navigation_model.dart';
import 'package:provider/provider.dart';

class NarrowApp extends StatefulWidget {
  final AppBar appBar;

  NarrowApp({required this.appBar, Key? key}) : super(key: key);

  @override
  State<NarrowApp> createState() => _NarrowAppState();
}

class _NarrowAppState extends State<NarrowApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appBar,
      body: SafeArea(
        child: Container(
          child: Provider.of<NavigationModel>(context).currentTabWidget,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: Provider.of<NavigationModel>(context).tabItems.map((item) {
          return BottomNavigationBarItem(
            icon: item['icon'],
            label: item['label'],
          );
        }).toList(),
        currentIndex: Provider.of<NavigationModel>(context).currentTabIndex,
        selectedIconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        unselectedItemColor: Theme.of(context).textTheme.headline6?.color,
        onTap: (index) => Provider.of<NavigationModel>(context, listen: false)
            .changeIndex(index),
      ),
    );
  }
}
