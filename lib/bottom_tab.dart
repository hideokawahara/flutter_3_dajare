import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/pages/home_page.dart';
import 'package:flutter_3_dajare/pages/message_list_page.dart';

class BottomTab extends StatelessWidget {
  BottomTab({Key? key}) : super(key: key);

  final Map<Widget, BottomNavigationBarItem> femaleAccountContents = {
    const HomePage(): const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'ホーム',
    ),
    const MessageListPage(): const BottomNavigationBarItem(
      icon: Icon(Icons.messenger_outlined),
      label: 'やりとり',
    ),
    const Center(
      child: Text(
        "お気に入り",
      ),
    ): const BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: 'お気に入り',
    ),
    const Center(
      child: Text(
        "設定",
      ),
    ): const BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: '設定',
    ),
  };

  @override
  Widget build(BuildContext context) {
    final List<Widget> pageWidgets = femaleAccountContents.entries
        .map((femaleContent) => femaleContent.key)
        .toList();
    final List<BottomNavigationBarItem> tabItems = femaleAccountContents.entries
        .map((femaleContent) => femaleContent.value)
        .toList();

    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: tabItems,
        activeColor: Colors.black,
        inactiveColor: Colors.grey,
        backgroundColor: Colors.white,
        // 追加したプロパティを記述する
        height: 66,
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(builder: (context) {
          return pageWidgets[index];
        });
      },
    );
  }
}
