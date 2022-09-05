import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'image_picker_function.dart';

enum Photo {
  library,
  camera,
}

Future<File?> showGetImagePopUp({required BuildContext context}) async {
  Photo? result = await showCupertinoModalPopup(
    context: context,
    builder: (BuildContext context) {
      return CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.of(context).pop(Photo.library);
            },
            child: const Text(
              'ライブラリから選ぶ',
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.of(context).pop(Photo.camera);
            },
            child: const Text(
              '写真を撮る',
            ),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'キャンセル',
          ),
        ),
      );
    },
  );
  if (result == null) {
    return null;
  } else if (result == Photo.library) {
    return await getPhotoFromLibrary();
  } else if (result == Photo.camera) {
    return await getPhotoFromCamera();
  } else {
    return null;
  }
}

Future<bool?> deleteImagePopUp({required BuildContext context}) async {
  bool? result = await showCupertinoModalPopup(
    context: context,
    builder: (BuildContext context) {
      return CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: const Text(
              '写真を削除する',
            ),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'キャンセル',
          ),
        ),
      );
    },
  );
  return result;
}
