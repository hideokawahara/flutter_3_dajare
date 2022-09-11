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
      backgroundColor: Colors.grey[200],
      body: const SettingsPageBody(),
    );
  }
}

class SettingsPageBody extends StatelessWidget {
  const SettingsPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight,
      padding: const EdgeInsets.all(
        16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '設定',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
            ),
            title: const Text(
              'ログアウト',
            ),
            onTap: () {},
            shape: const Border(
              bottom: BorderSide(
                color: Colors.grey,
              ),
            ),
            tileColor: Colors.white,
          ),
          ListTile(
            leading: const Icon(
              Icons.delete_forever,
            ),
            title: const Text('アカウント削除'),
            onTap: () {},
            shape: const Border(
              bottom: BorderSide(
                color: Colors.grey,
              ),
            ),
            tileColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
