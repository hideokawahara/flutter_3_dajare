import 'package:flutter/material.dart';

import '../model/female_user.dart';
import '../model/joke.dart';

class MaleHomeViewModel extends ChangeNotifier {
  //Todo: 修正する
  final List<Joke> _popularJokeList = _dummyJokeList;
  List<Joke> get popularJokeList {
    return [..._popularJokeList];
  }

  final List<FemaleUser> _femaleUserList = _dummyFemaleUsers;
  List<FemaleUser> get femaleUserList {
    return [..._femaleUserList];
  }

  Future<void> fetchPopularJokeList() async {
    await Future.delayed(
      const Duration(
        milliseconds: 1000,
      ),
    );
    _popularJokeList.addAll([]);
    notifyListeners();
  }
}

List<Joke> _dummyJokeList = [
  Joke(
    authorName: 'ユーキ',
    authorAge: 28,
    authorImage:
        'https://pakutaso.cdn.rabify.me/shared/img/thumb/danda-danda-danda-_MKT5249-11344-11395-11417.jpg.webp?d=1420',
    contents: 'Q：小野洋子さんはどこにいますか？\n「オノヨーコ、そおのよーこ」',
    likesCounts: 2748,
  ),
  Joke(
    authorName: 'こーへい',
    authorAge: 32,
    authorImage:
        'https://pakutaso.cdn.rabify.me/shared/img/thumb/KENTA883_hansyaban.jpg.webp?d=1420',
    contents: '水原希子に自ら聞こう。',
    likesCounts: 1808,
  ),
  Joke(
    authorName: '三上',
    authorAge: 29,
    authorImage:
        'https://pakutaso.cdn.rabify.me/shared/img/thumb/MAX20160I9A9490.jpg.webp?d=1420',
    contents: '肉まんを憎まん',
    likesCounts: 1511,
  ),
  Joke(
    authorName: 'ゆうくん',
    authorAge: 22,
    authorImage:
        'https://pakutaso.cdn.rabify.me/shared/img/thumb/ookawa_MKT4826-11759.jpg.webp?d=1420',
    contents: '小野小町、斧のコマネチ',
    likesCounts: 1027,
  ),
];

List<FemaleUser> _dummyFemaleUsers = [
  FemaleUser(
    name: 'カナ',
    age: 29,
    mainPhoto:
        'https://pakutaso.cdn.rabify.me/shared/img/thumb/yumikoPAR52492.jpg.webp?d=1420',
    profileMessage:
        'はじめまして！プロフィールを見ていただきありがとうございます\n都内の商社で営業事務をしている〇〇（名前）といいます。\n女性が多い職場でなかなか出会いがなく、思い切って登録してみました！\n休日はヨガに行って汗を流したり、料理をしたりして過ごしています。\n（最近はチョコケーキを極めるのにハマっています！）\nあと、国内外問わず旅行も大好きです！\n音楽は邦ロックが好きで、夏には友達とフェスに参戦したりしています♪\n邦ロック以外もいろいろ聴くので、おすすめの音楽があればぜひ教えてください(*’ω’*)\n性格はおっとりしていると言われることが多いですが、自分ではやるときはやる性格だと思っています\n恋人とはお互いの趣味を共有し合ったり、自然体でいられる関係が理想です\nまずは気軽にカフェなどでお話できたら嬉しいです。そうぞよろしくお願いします！',
    photoList: [
      'https://pakutaso.cdn.rabify.me/shared/img/thumb/yumikoPAR52530.jpg.webp?d=710',
      'https://pakutaso.cdn.rabify.me/shared/img/thumb/N784_engawanookamisan.jpg.webp?d=1420',
      'https://pakutaso.cdn.rabify.me/shared/img/thumb/N853_atamawosageruokami.jpg.webp?d=1420',
      'https://pakutaso.cdn.rabify.me/shared/img/thumb/yumikoPAR52809.jpg.webp?d=710',
      'https://pakutaso.cdn.rabify.me/shared/img/thumb/YAMA_DSC9779.jpg.webp?d=1420',
    ],
    preference: Preference.black,
  ),
  FemaleUser(
    name: 'ゆみ',
    age: 22,
    mainPhoto:
        'https://pakutaso.cdn.rabify.me/shared/img/thumb/SAYAPAKU5347.jpg.webp?d=1420',
    profileMessage:
        'はじめまして！プロフィールを見ていただきありがとうございます\n都内の商社で営業事務をしている〇〇（名前）といいます。\n女性が多い職場でなかなか出会いがなく、思い切って登録してみました！\n休日はヨガに行って汗を流したり、料理をしたりして過ごしています。\n（最近はチョコケーキを極めるのにハマっています！）\nあと、国内外問わず旅行も大好きです！\n音楽は邦ロックが好きで、夏には友達とフェスに参戦したりしています♪\n邦ロック以外もいろいろ聴くので、おすすめの音楽があればぜひ教えてください(*’ω’*)\n性格はおっとりしていると言われることが多いですが、自分ではやるときはやる性格だと思っています\n恋人とはお互いの趣味を共有し合ったり、自然体でいられる関係が理想です\nまずは気軽にカフェなどでお話できたら嬉しいです。そうぞよろしくお願いします！',
    photoList: [
      'https://pakutaso.cdn.rabify.me/shared/img/thumb/yumikoPAR52530.jpg.webp?d=710',
      'https://pakutaso.cdn.rabify.me/shared/img/thumb/N784_engawanookamisan.jpg.webp?d=1420',
      'https://pakutaso.cdn.rabify.me/shared/img/thumb/N853_atamawosageruokami.jpg.webp?d=1420',
      'https://pakutaso.cdn.rabify.me/shared/img/thumb/yumikoPAR52809.jpg.webp?d=710',
      'https://pakutaso.cdn.rabify.me/shared/img/thumb/YAMA_DSC9779.jpg.webp?d=1420',
    ],
    preference: Preference.vulgar,
  ),
  FemaleUser(
    name: 'りなちー',
    age: 30,
    mainPhoto:
        'https://pakutaso.cdn.rabify.me/shared/img/thumb/yuka16011215IMG_5574.jpg.webp?d=1420',
    profileMessage:
        'はじめまして！プロフィールを見ていただきありがとうございます\n都内の商社で営業事務をしている〇〇（名前）といいます。\n女性が多い職場でなかなか出会いがなく、思い切って登録してみました！\n休日はヨガに行って汗を流したり、料理をしたりして過ごしています。\n（最近はチョコケーキを極めるのにハマっています！）\nあと、国内外問わず旅行も大好きです！\n音楽は邦ロックが好きで、夏には友達とフェスに参戦したりしています♪\n邦ロック以外もいろいろ聴くので、おすすめの音楽があればぜひ教えてください(*’ω’*)\n性格はおっとりしていると言われることが多いですが、自分ではやるときはやる性格だと思っています\n恋人とはお互いの趣味を共有し合ったり、自然体でいられる関係が理想です\nまずは気軽にカフェなどでお話できたら嬉しいです。そうぞよろしくお願いします！',
    photoList: [
      'https://pakutaso.cdn.rabify.me/shared/img/thumb/yumikoPAR52530.jpg.webp?d=710',
      'https://pakutaso.cdn.rabify.me/shared/img/thumb/N784_engawanookamisan.jpg.webp?d=1420',
      'https://pakutaso.cdn.rabify.me/shared/img/thumb/N853_atamawosageruokami.jpg.webp?d=1420',
      'https://pakutaso.cdn.rabify.me/shared/img/thumb/yumikoPAR52809.jpg.webp?d=710',
      'https://pakutaso.cdn.rabify.me/shared/img/thumb/YAMA_DSC9779.jpg.webp?d=1420',
    ],
    preference: Preference.black,
  ),
  FemaleUser(
    name: 'ゆーり',
    age: 24,
    mainPhoto:
        'https://pakutaso.cdn.rabify.me/shared/img/thumb/150912225700.jpg.webp?d=1420',
    profileMessage:
        'はじめまして！プロフィールを見ていただきありがとうございます\n都内の商社で営業事務をしている〇〇（名前）といいます。\n女性が多い職場でなかなか出会いがなく、思い切って登録してみました！\n休日はヨガに行って汗を流したり、料理をしたりして過ごしています。\n（最近はチョコケーキを極めるのにハマっています！）\nあと、国内外問わず旅行も大好きです！\n音楽は邦ロックが好きで、夏には友達とフェスに参戦したりしています♪\n邦ロック以外もいろいろ聴くので、おすすめの音楽があればぜひ教えてください(*’ω’*)\n性格はおっとりしていると言われることが多いですが、自分ではやるときはやる性格だと思っています\n恋人とはお互いの趣味を共有し合ったり、自然体でいられる関係が理想です\nまずは気軽にカフェなどでお話できたら嬉しいです。そうぞよろしくお願いします！',
    photoList: [
      'https://pakutaso.cdn.rabify.me/shared/img/thumb/yumikoPAR52530.jpg.webp?d=710',
      'https://pakutaso.cdn.rabify.me/shared/img/thumb/N784_engawanookamisan.jpg.webp?d=1420',
      'https://pakutaso.cdn.rabify.me/shared/img/thumb/N853_atamawosageruokami.jpg.webp?d=1420',
      'https://pakutaso.cdn.rabify.me/shared/img/thumb/yumikoPAR52809.jpg.webp?d=710',
      'https://pakutaso.cdn.rabify.me/shared/img/thumb/YAMA_DSC9779.jpg.webp?d=1420',
    ],
    preference: Preference.intelligence,
  ),
];
