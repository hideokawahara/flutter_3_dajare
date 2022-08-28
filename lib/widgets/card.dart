import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/model/female_user.dart';

Widget femaleCard({
  required String mainPhoto,
  required String name,
  required int age,
  required Preference preference,
}) {
  Widget _preferenceTag({
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

  Widget setPreferenceTag;
  switch (preference) {
    case Preference.black:
      setPreferenceTag = _preferenceTag(
          icon: const Icon(
            Icons.energy_savings_leaf,
            color: Colors.white,
          ),
          preference: 'ブラック',
          tagColor: Colors.black);
      break;
    case Preference.vulgar:
      setPreferenceTag = _preferenceTag(
          icon: const Icon(
            Icons.no_adult_content,
            color: Colors.white,
          ),
          preference: '下ネタ',
          tagColor: Colors.pinkAccent);
      break;
    case Preference.intelligence:
      setPreferenceTag = _preferenceTag(
          icon: const Icon(
            Icons.lightbulb,
            color: Colors.white,
          ),
          preference: '知的',
          tagColor: Colors.blueAccent);
      break;
  }

  return Container(
    width: 200,
    margin: const EdgeInsets.only(right: 16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
      border: Border.all(color: Colors.black12),
      boxShadow: const [
        BoxShadow(
          color: Colors.black26,
          spreadRadius: 1.0,
          blurRadius: 10.0,
          offset: Offset(10, 10),
        ),
      ],
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Stack(
            fit: StackFit.expand,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Image.network(
                  mainPhoto,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  foregroundDecoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.2),
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        '$age歳',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            left: 16,
            bottom: 16,
            right: 16,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  setPreferenceTag,
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
