import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/pages/female_user_list_page.dart';
import 'package:flutter_3_dajare/view_model/male_home_view_model.dart';
import 'package:flutter_3_dajare/widgets/card.dart';
import 'package:provider/provider.dart';

class MaleAccountHomePage extends StatelessWidget {
  const MaleAccountHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MaleHomeViewModel(),
      child: const Scaffold(
        backgroundColor: Colors.white,
        body: MaleAccountHomePageBody(),
      ),
    );
  }
}

class MaleAccountHomePageBody extends StatelessWidget {
  const MaleAccountHomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: screenWidth,
              height: 200,
              color: Colors.redAccent,
              child: Image.network(
                'https://jsbs2012.jp/wp-content/uploads/pairs-model_20200731182254_2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            popularJokeListSection(context),
            const SizedBox(
              height: 24,
            ),
            femaleUserListSection(context),
          ],
        ),
      ),
    );
  }

  Widget popularJokeListSection(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          '本日の人気のJokeランキング',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 300,
          child: Consumer<MaleHomeViewModel>(
            builder: (context, homeModel, child) {
              if (homeModel.popularJokeList.isEmpty) {
                return const Center(
                  child: Text('Jokeがありません'),
                );
              } else {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  itemCount: homeModel.popularJokeList.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext listContext, int index) {
                    int rank = index + 1;
                    return jokeCard(
                      rank: rank,
                      likesCounts: homeModel.popularJokeList[index].likesCounts,
                      contents: homeModel.popularJokeList[index].contents,
                      authorImage: homeModel.popularJokeList[index].authorImage,
                      authorName: homeModel.popularJokeList[index].authorName,
                      authorAge: homeModel.popularJokeList[index].authorAge,
                    );
                  },
                );
              }
            },
          ),
        ),
      ],
    );
  }

  Widget femaleUserListSection(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: InkWell(
            onTap: () {
              Navigator.of(context, rootNavigator: true).push(
                MaterialPageRoute(
                  builder: (_) => const FemaleUserListPage(),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(
                  height: 24,
                  width: 24,
                ),
                Text(
                  'はじめたばかりの相手',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 300,
          child: Consumer<MaleHomeViewModel>(
            builder: (context, homeModel, child) {
              if (homeModel.femaleUserList.isEmpty) {
                return const Center(
                  child: Text('相手がいません'),
                );
              }
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                itemCount: homeModel.femaleUserList.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext listContext, int index) {
                  return femaleCard(
                    listContext,
                    index: index,
                    mainPhoto: homeModel.femaleUserList[index].mainPhoto,
                    name: homeModel.femaleUserList[index].name,
                    age: homeModel.femaleUserList[index].age,
                    preference: homeModel.femaleUserList[index].preference,
                    margin: const EdgeInsets.only(right: 16),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
