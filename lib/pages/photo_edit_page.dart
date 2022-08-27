import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/pages/profile_preview_page.dart';
import 'package:provider/provider.dart';

import '../view_model/authentication_view_model.dart';

class PhotoEditPage extends StatelessWidget {
  const PhotoEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          '写真編集',
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
          child: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ProfilePreviewPage(),
                ),
              );
            },
            child: const Text(
              'プレビュー',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: const PhotoEditPageBody(),
    );
  }
}

class PhotoEditPageBody extends StatelessWidget {
  const PhotoEditPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationViewModel>(
        builder: (context, authModel, child) {
      //Todo: 取得方法を修正する
      final String? mainPhoto = authModel.myData?.mainPhoto;
      final String? secondPhoto = authModel.myData?.photoList[0];
      final String? thirdPhoto = authModel.myData?.photoList[1];
      final String? fourthPhoto = authModel.myData?.photoList[2];
      final String? fifthPhoto = authModel.myData?.photoList[3];
      final String? sixthPhoto = authModel.myData?.photoList[4];
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text("5枚以上登録すると印象アップ！"),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 216,
                  height: 216,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: mainPhoto != null
                        ? Image.network(
                            mainPhoto,
                            fit: BoxFit.cover,
                          )
                        : null,
                  ),
                ),
                Column(
                  children: [
                    secondPhoto != null
                        ? SizedBox(
                            width: 100,
                            height: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.network(
                                secondPhoto,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        : noPhotoCell(),
                    const SizedBox(
                      height: 16,
                    ),
                    thirdPhoto != null
                        ? SizedBox(
                            width: 100,
                            height: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.network(
                                thirdPhoto,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        : noPhotoCell(),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                fourthPhoto != null
                    ? SizedBox(
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.network(
                            fourthPhoto,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : noPhotoCell(),
                fifthPhoto != null
                    ? SizedBox(
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.network(
                            fifthPhoto,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : noPhotoCell(),
                sixthPhoto != null
                    ? SizedBox(
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.network(
                            sixthPhoto,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : noPhotoCell(),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                noPhotoCell(),
                noPhotoCell(),
                noPhotoCell(),
              ],
            ),
          ],
        ),
      );
    });
  }

  Widget noPhotoCell() {
    return SizedBox(
      width: 100,
      height: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              color: Colors.grey[350],
            ),
            Container(
              height: 25,
              width: 25,
              margin: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Icon(
                Icons.add,
                color: Colors.grey[350],
                size: 25,
              ),
            )
          ],
        ),
      ),
    );
  }
}
