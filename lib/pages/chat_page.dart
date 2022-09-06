import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/widgets/icon.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'タロー',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const BackArrowIcon(),
        ),
      ),
      body: const ChatPageBody(),
    );
  }
}

class ChatPageBody extends StatelessWidget {
  const ChatPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(
        top: 12,
        right: 16,
        left: 16,
      ),
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (BuildContext listContext, int index) {
        return messageBubble();
      },
    );
  }

  Widget messageBubble() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundImage: Image.network(
            "https://pakutaso.cdn.rabify.me/shared/img/thumb/bakarizmPAR56935.jpg.webp?d=1420",
            fit: BoxFit.cover,
          ).image,
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 16,
            ),
            margin: const EdgeInsets.only(
              bottom: 16,
            ),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            width: double.infinity,
            child: const Text(
              "こんにちは！\n名前はタローといいます！",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const Text(
          "17:15",
        ),
      ],
    );
  }
}
