import 'package:flutter/material.dart';

import 'man_details_page.dart';

class FavoriteListPage extends StatelessWidget {
  const FavoriteListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'お気に入り',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const FavoriteListPageBody(),
    );
  }
}

class FavoriteListPageBody extends StatefulWidget {
  const FavoriteListPageBody({Key? key}) : super(key: key);

  @override
  State<FavoriteListPageBody> createState() => _FavoriteListPageBodyState();
}

class _FavoriteListPageBodyState extends State<FavoriteListPageBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.more_horiz,
                  ),
                ),
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
                InkWell(
                  onTap: () {
                    Navigator.of(context, rootNavigator: true).push(
                      MaterialPageRoute(
                        builder: (_) => const ManDetailsPage(),
                      ),
                    );
                  },
                  child: Row(
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
                      const Text(
                        "タロー",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        "26歳",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.favorite_rounded,
                        color: Colors.redAccent,
                      ),
                      const Text(
                        "63",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ],
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
