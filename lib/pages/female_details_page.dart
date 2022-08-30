import 'package:flutter/material.dart';

class FemaleDetailsPage extends StatelessWidget {
  const FemaleDetailsPage({
    Key? key,
    required this.index,
    required this.name,
    required this.age,
    required this.profileMessage,
    required this.mainPhoto,
    required this.photoList,
  }) : super(key: key);
  final int index;
  final String name;
  final int age;
  final String profileMessage;
  final String mainPhoto;
  final List<String> photoList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FemaleDetailsPageBody(
        index: index,
        name: name,
        age: age,
        profileMessage: profileMessage,
        mainPhoto: mainPhoto,
        photoList: photoList,
      ),
    );
  }
}

class FemaleDetailsPageBody extends StatelessWidget {
  const FemaleDetailsPageBody({
    Key? key,
    required this.index,
    required this.name,
    required this.age,
    required this.profileMessage,
    required this.mainPhoto,
    required this.photoList,
  }) : super(key: key);
  final int index;
  final String name;
  final int age;
  final String profileMessage;
  final String mainPhoto;
  final List<String> photoList;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ChangeableTopPhoto(
                    mainPhoto: mainPhoto,
                    photoList: photoList,
                    height: 400,
                    tag: 'femaleHero$index',
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 16,
                      width: screenWidth,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      '$age歳',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      "自己紹介",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      profileMessage,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 48,
          ),
          child: IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.white,
              size: 32,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ],
    );
  }
}

class ChangeableTopPhoto extends StatefulWidget {
  const ChangeableTopPhoto({
    Key? key,
    required this.mainPhoto,
    required this.photoList,
    required this.height,
    required this.tag,
  }) : super(key: key);
  final String? mainPhoto;
  final List<String> photoList;
  final double height;
  final String tag;

  @override
  State<ChangeableTopPhoto> createState() => _ChangeableTopPhotoState();
}

class _ChangeableTopPhotoState extends State<ChangeableTopPhoto> {
  int _imageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> setPhotoList = [];
    if (widget.mainPhoto != null) {
      setPhotoList.add(widget.mainPhoto!);
    }
    setPhotoList.addAll(widget.photoList);
    String? selectPhoto;
    if (setPhotoList.isNotEmpty) {
      selectPhoto = setPhotoList[_imageIndex];
    }
    return Stack(
      children: [
        SizedBox(
          height: widget.height,
          child: selectPhoto != null
              ? Hero(
                  tag: widget.tag,
                  child: Image.network(
                    selectPhoto,
                    fit: BoxFit.cover,
                  ),
                )
              : null,
        ),
        SizedBox(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  child: Container(
                    height: widget.height,
                  ),
                  onTap: () {
                    print('tap! left!');
                    if (_imageIndex != 0) {
                      setState(() {
                        _imageIndex = _imageIndex - 1;
                      });
                    }
                  },
                ),
              ),
              Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  child: Container(
                    height: widget.height,
                  ),
                  onTap: () {
                    print('tap! right');
                    if (setPhotoList.length - 1 > _imageIndex) {
                      setState(() {
                        _imageIndex = _imageIndex + 1;
                      });
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
