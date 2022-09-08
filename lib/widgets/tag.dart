import 'package:flutter/material.dart';
import '../model/female_user.dart';

class PreferenceTag extends StatelessWidget {
  const PreferenceTag({
    Key? key,
    required this.preference,
  }) : super(key: key);
  final Preference preference;

  @override
  Widget build(BuildContext context) {
    switch (preference) {
      case Preference.black:
        return _tag(
          icon: const Icon(
            Icons.energy_savings_leaf,
            color: Colors.white,
          ),
          preference: 'ブラック',
          tagColor: Colors.black,
        );
      case Preference.vulgar:
        return _tag(
          icon: const Icon(
            Icons.no_adult_content,
            color: Colors.white,
          ),
          preference: '下ネタ',
          tagColor: Colors.pinkAccent,
        );
      case Preference.intelligence:
        return _tag(
          icon: const Icon(
            Icons.lightbulb,
            color: Colors.white,
          ),
          preference: '知的',
          tagColor: Colors.blueAccent,
        );
    }
  }

  Widget _tag({
    required Icon icon,
    required String preference,
    required Color tagColor,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: tagColor,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      child: Row(
        children: [
          icon,
          Text(
            preference,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
