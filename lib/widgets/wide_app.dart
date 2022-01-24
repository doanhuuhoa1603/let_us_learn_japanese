import 'package:flutter/material.dart';
import '../models/navigation_model.dart';
import 'package:provider/provider.dart';

class WideApp extends StatefulWidget {
  final AppBar appBar;

  const WideApp({required this.appBar, Key? key}) : super(key: key);

  @override
  State<WideApp> createState() => _WideAppState();
}

class _WideAppState extends State<WideApp> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: widget.appBar,
        body: Row(
          children: <Widget>[
            NavigationRail(
              extended: mediaQuery.size.width > 700,
              minExtendedWidth: mediaQuery.size.width * 0.25 < 300 ? mediaQuery.size.width * 0.25 : 300,
              selectedIndex:
                  Provider.of<NavigationModel>(context).currentTabIndex,
              onDestinationSelected: (index) =>
                  Provider.of<NavigationModel>(context, listen: false)
                      .changeIndex(index),
              labelType: NavigationRailLabelType.none,
              destinations: Provider.of<NavigationModel>(context).tabItems.map((item) {
                  return NavigationRailDestination(
                    icon: Tooltip(message: item['label'], child: item['icon'],),
                    selectedIcon: item['selectedIcon'],
                    label: Text(item['label']),
                  );
                }
              ).toList(),
            ),
            const VerticalDivider(thickness: 1, width: 1),
            // This is the main content.
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Provider.of<NavigationModel>(context).currentTabWidget,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
