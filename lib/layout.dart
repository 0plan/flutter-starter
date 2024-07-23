import 'package:flutter/material.dart';
import 'package:flutter_zustand/flutter_zustand.dart';
import 'package:starter/pages/bookmark/home.dart';
import 'package:starter/pages/home/main.dart';
import 'package:starter/pages/settings/settings.dart';
import 'package:starter/stores/bottomTab.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    final tabIndex = useBottomTabStore().select(context, (state) => state);
    final tab = useBottomTabStore();

    const List<Widget> pages = [
      Home(),
      BookmarkHome(type: GridListDemoType.footer),
      Settings(),
    ];

    return Scaffold(
      appBar: AppBar(
        actions: const [
          IconButton(
            onPressed: null,
            icon: Badge(
                label: Text('9+'), child: Icon(Icons.notifications_sharp)),
          ),
        ],
      ),
      body: Center(
        child: pages[tabIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: '즐겨찾기',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '설정',
          ),
        ],
        selectedItemColor: Colors.blue,
        onTap: (int index) {
          tab.setIndex(index);
        },
        currentIndex: tabIndex,
      ),
    );
  }
}
