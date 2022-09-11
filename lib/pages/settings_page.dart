import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/widgets/icon.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          '設定',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
          icon: const BackArrowIcon(),
        ),
      ),
      body: const SettingsPageBody(),
    );
  }
}

class SettingsPageBody extends StatelessWidget {
  const SettingsPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(
              Icons.logout,
            ),
            title: Text('ログアウト'),
            onTap: () {},
            shape: Border(
              bottom: BorderSide(color: Colors.grey),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
            ),
            title: Text('アカウント削除'),
            onTap: () {},
            shape: Border(
              bottom: BorderSide(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
