import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/widgets/icon.dart';

class MessageEditPage extends StatelessWidget {
  const MessageEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          '自己紹介',
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
      body: const MessageEditPageBody(),
    );
  }
}

class MessageEditPageBody extends StatefulWidget {
  const MessageEditPageBody({Key? key}) : super(key: key);

  @override
  State<MessageEditPageBody> createState() => _MessageEditPageBodyState();
}

class _MessageEditPageBodyState extends State<MessageEditPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
