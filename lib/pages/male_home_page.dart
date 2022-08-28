import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/view_model/male_home_view_model.dart';
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
                    return Container(
                      width: 200,
                      margin: const EdgeInsets.only(right: 16),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
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
                          Row(
                            children: [
                              Text(
                                '人気$rank位',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.favorite_rounded,
                                color: Colors.redAccent,
                              ),
                              Text(
                                '${homeModel.popularJokeList[index].likesCounts}',
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const Divider(),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              homeModel.popularJokeList[index].contents,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Shippori_Antique',
                              ),
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {},
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: Image.network(
                                    homeModel
                                        .popularJokeList[index].authorImage,
                                    fit: BoxFit.cover,
                                  ).image,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  homeModel.popularJokeList[index].authorName,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '${homeModel.popularJokeList[index].authorAge}歳',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
                  return Container(
                    width: 200,
                    margin: const EdgeInsets.only(right: 16),
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
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                child: Image.network(
                                  homeModel.femaleUserList[index].mainPhoto,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  padding: const EdgeInsets.all(16.0),
                                  foregroundDecoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: FractionalOffset.topCenter,
                                      end: FractionalOffset.bottomCenter,
                                      colors: [
                                        Colors.black.withOpacity(0.0),
                                        Colors.black.withOpacity(0.2),
                                      ],
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        homeModel.femaleUserList[index].name,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        '${homeModel.femaleUserList[index].age}歳',
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            left: 16,
                            bottom: 16,
                            right: 16,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(
                                        8,
                                      ),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.energy_savings_leaf,
                                          color: Colors.white,
                                        ),
                                        // Text(
                                        //   homeModel
                                        //       .femaleUserList[index].preference
                                        //       .toString(),
                                        //   style: const TextStyle(
                                        //     fontSize: 12,
                                        //     fontWeight: FontWeight.w400,
                                        //     color: Colors.white,
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
