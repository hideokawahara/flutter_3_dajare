import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/view_model/joke_posts_view_model.dart';
import 'package:provider/provider.dart';

class JokePostsPage extends StatelessWidget {
  const JokePostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => JokePostsViewModel(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            '投稿',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: const JokePostsPageBody(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.redAccent,
          child: const Icon(
            Icons.add,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

class JokePostsPageBody extends StatelessWidget {
  const JokePostsPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<JokePostsViewModel>(builder: (context, homeModel, child) {
        return ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          itemCount: homeModel.myJokeList.length,
          itemBuilder: (BuildContext listContext, int index) {
            return myJokeCard(
              contents: homeModel.myJokeList[index].contents,
              likesCounts: homeModel.myJokeList[index].likesCounts,
            );
          },
        );
      }),
    );
  }

  Widget myJokeCard({
    required String contents,
    required int likesCounts,
  }) {
    return Container(
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
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              contents,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'Shippori_Antique',
              ),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(
                  Icons.favorite_rounded,
                  color: Colors.redAccent,
                ),
                Text(
                  '$likesCounts',
                  style: const TextStyle(
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
  }
}
