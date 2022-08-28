import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MaleAccountHomePage extends StatelessWidget {
  const MaleAccountHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: MaleAccountHomePageBody(),
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
            popularJokeListSection(),
          ],
        ),
      ),
    );
  }

  Widget popularJokeListSection() {
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
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            itemCount: 6,
            shrinkWrap: true,
            itemBuilder: (BuildContext listContext, int index) {
              int rank = index + 1;
              return Container(
                width: 200,
                margin: const EdgeInsets.only(right: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
                    const Divider(),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "駄洒落を言ったのはダジャレ",
                        style: TextStyle(
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
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
