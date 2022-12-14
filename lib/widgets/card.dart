import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/model/female_user.dart';
import 'package:flutter_3_dajare/widgets/tag.dart';
import '../pages/female_details_page.dart';
import 'button.dart';

class FemaleCard extends StatelessWidget {
  const FemaleCard({
    Key? key,
    required this.index,
    required this.mainPhoto,
    required this.name,
    required this.age,
    required this.profileMessage,
    required this.photoList,
    required this.preference,
    this.margin,
  }) : super(key: key);
  final int index;
  final String mainPhoto;
  final String name;
  final int age;
  final String profileMessage;
  final List<String> photoList;
  final Preference preference;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context, rootNavigator: true).push(
          MaterialPageRoute(
            builder: (_) => FemaleDetailsPage(
              index: index,
              name: name,
              age: age,
              profileMessage: profileMessage,
              mainPhoto: mainPhoto,
              photoList: photoList,
              preference: preference,
            ),
          ),
        );
      },
      child: Container(
        width: 200,
        margin: margin,
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
                    child: Hero(
                      tag: 'femaleHero$index',
                      child: Image.network(
                        mainPhoto,
                        fit: BoxFit.cover,
                      ),
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
                            name,
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
                            '$age???',
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Hero(
                        tag: 'preferenceHero$index',
                        child: PreferenceTag(
                          preference: preference,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class JokeCard extends StatelessWidget {
  const JokeCard({
    Key? key,
    required this.rank,
    required this.likesCounts,
    required this.contents,
    required this.authorImage,
    required this.authorName,
    required this.authorAge,
  }) : super(key: key);
  final int rank;
  final int likesCounts;
  final String contents;
  final String authorImage;
  final String authorName;
  final int authorAge;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 16),
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
          Row(
            children: [
              Text(
                '??????$rank???',
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
                '$likesCounts',
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
              contents,
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
                    authorImage,
                    fit: BoxFit.cover,
                  ).image,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  authorName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  '$authorAge???',
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
  }
}

class NoInfoJokeCard extends StatelessWidget {
  const NoInfoJokeCard({
    Key? key,
    required this.contents,
    required this.onTap,
  }) : super(key: key);
  final String contents;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
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
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              contents,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Shippori_Antique',
              ),
            ),
          ),
          const Spacer(),
          const Divider(),
          Align(
            alignment: Alignment.centerRight,
            child: LikeButton(
              onTap: () {
                onTap();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MyJokeCard extends StatelessWidget {
  const MyJokeCard({
    Key? key,
    required this.contents,
    required this.likesCounts,
  }) : super(key: key);
  final String contents;
  final int likesCounts;

  @override
  Widget build(BuildContext context) {
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
