import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/bottom_tab.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (_) => BottomTab(),
      },
    );
  }
}
