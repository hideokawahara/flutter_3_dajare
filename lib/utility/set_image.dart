import 'dart:io';

import 'package:flutter/material.dart';

Widget setImage(String imageSrc) {
  if (imageSrc.contains('http') || imageSrc.contains('https')) {
    return Image.network(
      imageSrc,
      fit: BoxFit.cover,
    );
  } else if (imageSrc.contains('/')) {
    return Image.file(
      File(imageSrc),
      fit: BoxFit.cover,
    );
  } else {
    //Todo: image assetに差し替える
    return const Center(
      child: Text('画像の取得に失敗しました'),
    );
  }
}
