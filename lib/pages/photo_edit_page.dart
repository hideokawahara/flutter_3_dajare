import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/pages/profile_preview_page.dart';
import 'package:flutter_3_dajare/utility/image_picker_function.dart';
import 'package:flutter_3_dajare/utility/modal_popup.dart';
import 'package:flutter_3_dajare/utility/set_image.dart';
import 'package:flutter_3_dajare/widgets/icon.dart';
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
          child: const BackArrowIcon(),
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
        createMainPhotoCell(
          photo: mainPhoto,
          context: context,
        ),
      );
      List<Widget>? setPhotoList = createPhotoCellList(
        context: context,
        photoList: authModel.myData?.photoList,
      );
      setGridList.addAll(setPhotoList ?? []);
      setGridList.addAll(
        createUndefinedPhotoCellList(
              maximumLength: maximumPhotoLength,
              photoListLength: authModel.myData?.photoList.length ?? 0,
              context: context,
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

  Widget noPhotoCell({
    required BuildContext context,
    bool isMain = false,
  }) {
    var authModel =
        Provider.of<AuthenticationViewModel>(context, listen: false);
    return InkWell(
      onTap: () async {
        File? file = await showGetImagePopUp(context: context);
        if (file != null) {
          if (isMain) {
            authModel.addMainPhoto(file);
          } else {
            authModel.addPhoto(file);
          }
        }
      },
      child: SizedBox(
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
      ),
    );
  }

  Widget createMainPhotoCell({
    required String? photo,
    required BuildContext context,
  }) {
    var authModel =
        Provider.of<AuthenticationViewModel>(context, listen: false);
    final Widget image;
    if (photo != null && photo.isNotEmpty) {
      image = InkWell(
        onTap: () async {
          bool? result = await deleteImagePopUp(context: context);
          if (result != null && result) {
            authModel.deleteMainPhoto();
          }
        },
        child: setImage(photo),
      );
    } else {
      image = noPhotoCell(
        context: context,
        isMain: true,
      );
    }

    return StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 2,
      child: SizedBox(
        width: 216,
        height: 216,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: image,
        ),
      ),
    );
  }

  List<Widget>? createPhotoCellList({
    required BuildContext context,
    required List<String>? photoList,
  }) {
    var authModel =
        Provider.of<AuthenticationViewModel>(context, listen: false);
    return photoList?.map((String photo) {
      Widget image = setImage(photo);
      return StaggeredGridTile.count(
        crossAxisCellCount: 1,
        mainAxisCellCount: 1,
        child: InkWell(
          onTap: () async {
            bool? result = await deleteImagePopUp(context: context);
            if (result != null && result) {
              authModel.deletePhoto(photo);
            }
          },
          child: SizedBox(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: image,
            ),
          ),
        ),
      );
    }).toList();
  }

  List<Widget>? createUndefinedPhotoCellList({
    required int maximumLength,
    required int photoListLength,
    required BuildContext context,
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
              child: noPhotoCell(
                context: context,
              ),
            ),
          ),
        );
      });
    } else {
      return null;
    }
  }
}
