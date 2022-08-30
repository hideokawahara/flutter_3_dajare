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
