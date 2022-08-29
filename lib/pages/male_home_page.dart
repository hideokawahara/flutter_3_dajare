import 'package:flutter/material.dart';
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
            ),
            const SizedBox(
              height: 24,
            ),
            popularJokeListSection(context),
            const SizedBox(
              height: 24,
            ),
            femaleUserListSection(),
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

  Widget femaleUserListSection() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'はじめたばかりの相手',
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
                    mainPhoto: homeModel.femaleUserList[index].mainPhoto,
                    name: homeModel.femaleUserList[index].name,
                    age: homeModel.femaleUserList[index].age,
                    preference: homeModel.femaleUserList[index].preference,
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
