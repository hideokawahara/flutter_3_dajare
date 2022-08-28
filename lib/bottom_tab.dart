import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/pages/favorite_list_page.dart';
import 'package:flutter_3_dajare/pages/female_home_page.dart';
import 'package:flutter_3_dajare/pages/male_home_page.dart';
import 'package:flutter_3_dajare/pages/message_list_page.dart';
import 'package:flutter_3_dajare/pages/my_page.dart';
import 'package:flutter_3_dajare/view_model/authentication_view_model.dart';
import 'package:provider/provider.dart';

import 'model/my_data.dart';

class BottomTab extends StatelessWidget {
  BottomTab({Key? key}) : super(key: key);

  final Map<Widget, BottomNavigationBarItem> femaleAccountContents = {
    const FemaleAccountHomePage(): const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'ホーム',
    ),
    const MessageListPage(): const BottomNavigationBarItem(
      icon: Icon(Icons.messenger_outlined),
      label: 'やりとり',
    ),
    const FavoriteListPage(): const BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: 'お気に入り',
    ),
    const MyPage(): const BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: '設定',
    ),
  };

  final Map<Widget, BottomNavigationBarItem> maleAccountContents = {
    const MaleAccountHomePage(): const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'ホーム',
    ),
    const MessageListPage(): const BottomNavigationBarItem(
      icon: Icon(Icons.messenger_outlined),
      label: 'やりとり',
    ),
    const FavoriteListPage(): const BottomNavigationBarItem(
      icon: Icon(Icons.local_post_office_outlined),
      label: '投稿する',
    ),
    const MyPage(): const BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: '設定',
    ),
  };

  @override
  Widget build(BuildContext context) {
    final List<Widget> pageWidgets;
    final List<BottomNavigationBarItem> tabItems;
    final Gender? gender =
        Provider.of<AuthenticationViewModel>(context, listen: false)
            .myData
            ?.gender;
    if (gender == Gender.female) {
      pageWidgets = femaleAccountContents.entries
          .map((femaleContent) => femaleContent.key)
          .toList();
      tabItems = femaleAccountContents.entries
          .map((femaleContent) => femaleContent.value)
          .toList();
    } else if (gender == Gender.male) {
      pageWidgets = maleAccountContents.entries
          .map((femaleContent) => femaleContent.key)
          .toList();
      tabItems = maleAccountContents.entries
          .map((femaleContent) => femaleContent.value)
          .toList();
    } else {
      return const Center(
        child: Text('ログイン失敗しました'),
      );
    }

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
