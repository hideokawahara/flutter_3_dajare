import 'package:flutter/material.dart';

class MessageListPage extends StatelessWidget {
  const MessageListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'やりとり',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const MessageListPageBody(),
    );
  }
}

class MessageListPageBody extends StatelessWidget {
  const MessageListPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext listContext, int index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: Image.network(
              "https://pakutaso.cdn.rabify.me/shared/img/thumb/bakarizmPAR56935.jpg.webp?d=1420",
              fit: BoxFit.cover,
            ).image,
          ),
          title: Row(
            children: const [
              Text("タロー"),
              SizedBox(
                width: 8,
              ),
              Text("26歳"),
            ],
          ),
          subtitle: const Text("お茶しましょう"),
          trailing: const Text("8/12"),
        );
      },
    );
  }
}
