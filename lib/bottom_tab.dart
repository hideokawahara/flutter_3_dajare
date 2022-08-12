import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/pages/home_page.dart';

class BottomTab extends StatelessWidget {
  BottomTab({Key? key}) : super(key: key);

  // タブに連動して表示させたい画面のリスト
  final List<Widget> _pageWidgets = [
    const HomePage(),
    const Center(
      child: Text("ユーザー"),
    ),
    const Center(
      child: Text(
        "お気に入り",
      ),
    ),
    const Center(
      child: Text(
        "設定",
      ),
    ),
  ];

  // タブに実際に表示させたいアイコン等のリスト
  final List<BottomNavigationBarItem> _tabItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'ホーム',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'ユーザー',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: 'お気に入り',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: '設定',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: _tabItems,
        activeColor: Colors.yellowAccent,
        inactiveColor: Colors.white,
        backgroundColor: Colors.blueGrey,
        // 追加したプロパティを記述する
        height: 66,
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(builder: (context) {
          return _pageWidgets[index];
        });
      },
    );
  }
}
