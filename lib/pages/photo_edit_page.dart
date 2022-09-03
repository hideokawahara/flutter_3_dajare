import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/pages/profile_preview_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
  final int maximumPhotoLength = 8;

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationViewModel>(
        builder: (context, authModel, child) {
      //Todo: 取得方法を修正する
      final String? mainPhoto = authModel.myData?.mainPhoto;
      final List<Widget> setGridList = [];
      setGridList.add(
        createMainPhotoCell(mainPhoto),
      );
      List<Widget>? setPhotoList =
          createPhotoCellList(authModel.myData?.photoList);
      setGridList.addAll(setPhotoList ?? []);
      setGridList.addAll(
        createUndefinedPhotoCellList(
              maximumLength: maximumPhotoLength,
              photoListLength: authModel.myData?.photoList.length ?? 0,
            ) ??
            [],
      );
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text("5枚以上登録すると印象アップ！"),
            const SizedBox(
              height: 16,
            ),
            StaggeredGrid.count(
              crossAxisCount: 3,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: setGridList,
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

  Widget createMainPhotoCell(String? photo) {
    return StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 2,
      child: SizedBox(
        width: 216,
        height: 216,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: photo != null
              ? Image.network(
                  photo,
                  fit: BoxFit.cover,
                )
              : noPhotoCell(),
        ),
      ),
    );
  }

  List<Widget>? createPhotoCellList(List<String>? photoList) {
    return photoList?.map((String photo) {
      return StaggeredGridTile.count(
        crossAxisCellCount: 1,
        mainAxisCellCount: 1,
        child: SizedBox(
          width: 100,
          height: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.network(
              photo,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }).toList();
  }

  List<Widget>? createUndefinedPhotoCellList({
    required int maximumLength,
    required int photoListLength,
  }) {
    int checkDiffLength = maximumPhotoLength - photoListLength;
    if (checkDiffLength == 0) {
      return null;

      /// 足りない分を生成
    } else if (maximumPhotoLength > checkDiffLength && checkDiffLength > 0 ||

        /// photoListが0だったとき
        maximumPhotoLength == checkDiffLength) {
      return List.generate(checkDiffLength, (_) {
        return StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: SizedBox(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: noPhotoCell(),
            ),
          ),
        );
      });
    } else {
      return null;
    }
  }
}
