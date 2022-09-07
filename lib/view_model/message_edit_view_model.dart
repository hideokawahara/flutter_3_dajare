import 'package:flutter/material.dart';

class MessageEditViewModel extends ChangeNotifier {
  String _messageText = '';
  String get messageText {
    return _messageText;
  }

  set messageText(String value) {
    _messageText = value;
    notifyListeners();
  }
}
