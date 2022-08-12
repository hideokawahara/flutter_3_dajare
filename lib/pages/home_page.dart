import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/pages/man_details_page.dart';
import 'package:flutter_3_dajare/widgets/button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: HomePageBody(),
    );
  }
}

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: 6,
        itemBuilder: (BuildContext listContext, int index) {
          return Container(
            // height: 100,
            width: 200,
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: Colors.black12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 1.0,
                  blurRadius: 10.0,
                  offset: Offset(10, 10),
                ),
              ],
            ),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "駄洒落を言ったのはダジャレ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Divider(),
                Align(
                  alignment: Alignment.centerRight,
                  child: LikeButton(
                    onTap: () async {
                      print("tap");
                      BuildContext innerContext =
                          context; // 内部の context を保持しておくためのもの
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          innerContext =
                              context; // builder で使われている context を innerContext に保存しておく
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                      );
                      await Future.delayed(
                        const Duration(
                          milliseconds: 1000,
                        ),
                      );
                      Navigator.of(innerContext).pop();
                      Navigator.of(context, rootNavigator: true).push(
                        MaterialPageRoute(
                          builder: (_) => const ManDetailsPage(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
