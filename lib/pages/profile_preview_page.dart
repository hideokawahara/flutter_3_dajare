import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_3_dajare/model/my_data.dart';
import 'package:flutter_3_dajare/utility/set_image.dart';
import 'package:flutter_3_dajare/view_model/authentication_view_model.dart';
import 'package:flutter_3_dajare/widgets/icon.dart';
import 'package:provider/provider.dart';

class ProfilePreviewPage extends StatelessWidget {
  const ProfilePreviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'プレビュー',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const BackArrowIcon(),
        ),
      ),
      body: const ProfilePreviewPageBody(),
    );
  }
}

class ProfilePreviewPageBody extends StatelessWidget {
  const ProfilePreviewPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MyData? myData =
        Provider.of<AuthenticationViewModel>(context, listen: false).myData;
    final String? mainPhoto = myData?.mainPhoto;
    final String name = myData?.name ?? '';
    final int age = myData?.age ?? 0;
    final String profileMessage = myData?.profileMessage ?? '';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          const SizedBox(
            height: 56,
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  foregroundDecoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        Colors.blueAccent.withOpacity(0.0),
                        Colors.black.withOpacity(0.8),
                      ],
                    ),
                  ),
                  height: 500,
                  child: mainPhoto != null
                      ? Hero(
                          tag: "imageHero",
                          child: setImage(mainPhoto),
                        )
                      : null,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          '$age歳',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      profileMessage,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const PreviewDetailsPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'プロフィールを見る',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PreviewDetailsPage extends StatelessWidget {
  const PreviewDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: PreviewDetailsPageBody(),
    );
  }
}

class PreviewDetailsPageBody extends StatelessWidget {
  const PreviewDetailsPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final MyData? myData =
        Provider.of<AuthenticationViewModel>(context, listen: false).myData;
    final String? mainPhoto = myData?.mainPhoto;
    final List<String> photoList = myData?.photoList ?? [];
    final String name = myData?.name ?? '';
    final int age = myData?.age ?? 0;
    final String profileMessage = myData?.profileMessage ?? '';
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
                    tag: 'imageHero',
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
    final double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        SizedBox(
          height: widget.height,
          width: screenWidth,
          child: selectPhoto != null
              ? Hero(
                  tag: widget.tag,
                  child: setImage(selectPhoto),
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
                      HapticFeedback.heavyImpact();
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
                      HapticFeedback.heavyImpact();
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
