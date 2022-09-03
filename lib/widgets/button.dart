import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({
    Key? key,
    this.onTap,
  }) : super(key: key);
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Text(
          'いいかも',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class GoToMessageButton extends StatelessWidget {
  const GoToMessageButton({
    Key? key,
    this.onTap,
  }) : super(key: key);
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Text(
          'メッセージを送る',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class JokePostButton extends StatelessWidget {
  const JokePostButton({
    Key? key,
    required this.width,
    this.isActivate = false,
    this.onTap,
  }) : super(key: key);
  final double width;
  final bool isActivate;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null && isActivate) {
          onTap!();
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        width: width,
        decoration: BoxDecoration(
          color: buttonColor(
            isActivateValue: isActivate,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 12,
        ),
        alignment: Alignment.center,
        child: const Text(
          '投稿する',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Color buttonColor({required isActivateValue}) {
    final Color setColor;
    if (isActivateValue) {
      setColor = Colors.redAccent;
    } else {
      setColor = Colors.grey;
    }
    return setColor;
  }
}
