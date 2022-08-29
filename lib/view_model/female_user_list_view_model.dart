import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/model/female_user.dart';

class FemaleUserListViewModel extends ChangeNotifier {
  final List<FemaleUser> _femaleList = _dummyFemaleUsers;
  List<FemaleUser> get femaleList {
    return [..._femaleList];
  }
}

List<FemaleUser> _dummyFemaleUsers = [
  FemaleUser(
    name: 'カナ',
    age: 29,
    mainPhoto:
        'https://pakutaso.cdn.rabify.me/shared/img/thumb/yumikoPAR52492.jpg.webp?d=1420',
    preference: Preference.black,
  ),
  FemaleUser(
    name: 'ゆみ',
    age: 22,
    mainPhoto:
        'https://pakutaso.cdn.rabify.me/shared/img/thumb/SAYAPAKU5347.jpg.webp?d=1420',
    preference: Preference.vulgar,
  ),
  FemaleUser(
    name: 'りなちー',
    age: 30,
    mainPhoto:
        'https://pakutaso.cdn.rabify.me/shared/img/thumb/yuka16011215IMG_5574.jpg.webp?d=1420',
    preference: Preference.black,
  ),
  FemaleUser(
    name: 'ゆーり',
    age: 24,
    mainPhoto:
        'https://pakutaso.cdn.rabify.me/shared/img/thumb/150912225700.jpg.webp?d=1420',
    preference: Preference.intelligence,
  ),
  FemaleUser(
    name: 'カナ',
    age: 29,
    mainPhoto:
        'https://pakutaso.cdn.rabify.me/shared/img/thumb/yumikoPAR52492.jpg.webp?d=1420',
    preference: Preference.black,
  ),
  FemaleUser(
    name: 'ゆみ',
    age: 22,
    mainPhoto:
        'https://pakutaso.cdn.rabify.me/shared/img/thumb/SAYAPAKU5347.jpg.webp?d=1420',
    preference: Preference.vulgar,
  ),
  FemaleUser(
    name: 'りなちー',
    age: 30,
    mainPhoto:
        'https://pakutaso.cdn.rabify.me/shared/img/thumb/yuka16011215IMG_5574.jpg.webp?d=1420',
    preference: Preference.black,
  ),
  FemaleUser(
    name: 'ゆーり',
    age: 24,
    mainPhoto:
        'https://pakutaso.cdn.rabify.me/shared/img/thumb/150912225700.jpg.webp?d=1420',
    preference: Preference.intelligence,
  ),
  FemaleUser(
    name: 'カナ',
    age: 29,
    mainPhoto:
        'https://pakutaso.cdn.rabify.me/shared/img/thumb/yumikoPAR52492.jpg.webp?d=1420',
    preference: Preference.black,
  ),
  FemaleUser(
    name: 'ゆみ',
    age: 22,
    mainPhoto:
        'https://pakutaso.cdn.rabify.me/shared/img/thumb/SAYAPAKU5347.jpg.webp?d=1420',
    preference: Preference.vulgar,
  ),
  FemaleUser(
    name: 'りなちー',
    age: 30,
    mainPhoto:
        'https://pakutaso.cdn.rabify.me/shared/img/thumb/yuka16011215IMG_5574.jpg.webp?d=1420',
    preference: Preference.black,
  ),
  FemaleUser(
    name: 'ゆーり',
    age: 24,
    mainPhoto:
        'https://pakutaso.cdn.rabify.me/shared/img/thumb/150912225700.jpg.webp?d=1420',
    preference: Preference.intelligence,
  ),
];
