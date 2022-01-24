import 'package:flutter/material.dart';
import '../widgets/home/home.dart';
import '../widgets/grammar/grammar.dart';
import '../widgets/random/random.dart';
import '../widgets/word/word.dart';

class NavigationModel extends ChangeNotifier {
    int _selectedIndex = 0;
    List<Map> list = [
      { 
        'icon': const Icon(Icons.home_outlined),
        'selectedIcon': const Icon(Icons.home_rounded),
        'label': 'Home',
        'widget': const Home()
      },
      { 
        'icon': const Icon(Icons.book_outlined),
        'selectedIcon': const Icon(Icons.book_rounded),
        'label': 'Từ vựng',
        'widget': const Word()
      },
      { 
        'icon': const Icon(Icons.auto_stories_outlined),
        'selectedIcon': const Icon(Icons.auto_stories_rounded),
        'label': 'Ngữ pháp',
        'widget': const Grammar()
      },
      { 
        'icon': const Icon(Icons.star_border),
        'selectedIcon': const Icon(Icons.star),
        'label': 'Random',
        'widget': const Random()
      },
    ];

    int get currentTabIndex => _selectedIndex;
    List<Map> get tabItems => list;
    Widget get currentTabWidget => list[_selectedIndex]['widget'];

    void changeIndex(int index) {
      // print("Da thay doi index ${index}");
      _selectedIndex = index;
      notifyListeners();
    }
}