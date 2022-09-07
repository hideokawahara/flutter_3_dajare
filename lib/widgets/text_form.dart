import 'package:flutter/material.dart';

class JokeTextForm extends StatefulWidget {
  const JokeTextForm({
    Key? key,
    required this.setTextCallback,
  }) : super(key: key);
  final void Function(String) setTextCallback;

  @override
  State<JokeTextForm> createState() => _JokeTextFormState();
}

class _JokeTextFormState extends State<JokeTextForm> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 16,
      ),
      child: TextFormField(
        onChanged: (String value) {
          // widget.controller.text = value;
          widget.setTextCallback(value);
        },
        controller: controller,
        maxLines: 4,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontFamily: 'Shippori_Antique',
        ),
        decoration: InputDecoration(
          hintText: 'Jokeを投稿する',
          hintStyle: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
          fillColor: Colors.grey[50],
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 2.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Colors.grey[100]!,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}

class MessageTextForm extends StatefulWidget {
  const MessageTextForm({
    Key? key,
    required this.initialMessage,
    required this.setTextCallback,
  }) : super(key: key);
  final String initialMessage;
  final void Function(String) setTextCallback;

  @override
  State<MessageTextForm> createState() => _MessageTextFormState();
}

class _MessageTextFormState extends State<MessageTextForm> {
  final controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    controller.text = widget.initialMessage;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 16,
      ),
      child: TextFormField(
        onChanged: (String value) {
          widget.setTextCallback(value);
        },
        controller: controller,
        maxLines: 30,
        decoration: InputDecoration(
          hintText: '自己紹介を入力しよう',
          hintStyle: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
          fillColor: Colors.grey[50],
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 2.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Colors.grey[100]!,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
