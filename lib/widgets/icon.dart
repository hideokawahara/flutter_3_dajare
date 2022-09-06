import 'package:flutter/material.dart';

class BackArrowIcon extends StatelessWidget {
  const BackArrowIcon({
    Key? key,
    this.color,
  }) : super(key: key);
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.arrow_back_ios_rounded,
      color: color ?? Colors.black,
    );
  }
}

class ForwardArrowIcon extends StatelessWidget {
  const ForwardArrowIcon({
    Key? key,
    this.color,
  }) : super(key: key);
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.arrow_forward_ios,
      color: color ?? Colors.black,
    );
  }
}
