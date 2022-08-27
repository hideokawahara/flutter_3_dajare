import 'package:flutter/foundation.dart';
import 'package:flutter_3_dajare/model/my_data.dart';

class AuthenticationViewModel extends ChangeNotifier {
  MyData? _myData;
  MyData? get myData {
    return _myData;
  }

  bool _isLogin = false;
  bool get isLogin {
    return _isLogin;
  }

  Future<bool> login() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    try {
      _myData = MyData.fromJSON(_dummyMyData);
      _isLogin = true;
      return true;
    } on Exception {
      if (kDebugMode) {
        print('failed my data constructor');
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return false;
  }
}

Map<String, dynamic> _dummyMyData = {
  'name': 'チアキ',
  'age': 24,
  'profile_message':
      'はじめまして！プロフィールを見ていただきありがとうございます\n都内の商社で営業事務をしている〇〇（名前）といいます。\n女性が多い職場でなかなか出会いがなく、思い切って登録してみました！\n休日はヨガに行って汗を流したり、料理をしたりして過ごしています。\n（最近はチョコケーキを極めるのにハマっています！）\nあと、国内外問わず旅行も大好きです！\n音楽は邦ロックが好きで、夏には友達とフェスに参戦したりしています♪\n邦ロック以外もいろいろ聴くので、おすすめの音楽があればぜひ教えてください(*’ω’*)\n性格はおっとりしていると言われることが多いですが、自分ではやるときはやる性格だと思っています\n恋人とはお互いの趣味を共有し合ったり、自然体でいられる関係が理想です\nまずは気軽にカフェなどでお話できたら嬉しいです。そうぞよろしくお願いします！',
  'main_photo':
      'https://pakutaso.cdn.rabify.me/shared/img/thumb/yumikoPAR52492.jpg.webp?d=1420',
  'photo_list': [
    'https://pakutaso.cdn.rabify.me/shared/img/thumb/yumikoPAR52530.jpg.webp?d=710',
    'https://pakutaso.cdn.rabify.me/shared/img/thumb/N784_engawanookamisan.jpg.webp?d=1420',
    'https://pakutaso.cdn.rabify.me/shared/img/thumb/N853_atamawosageruokami.jpg.webp?d=1420',
    'https://pakutaso.cdn.rabify.me/shared/img/thumb/yumikoPAR52809.jpg.webp?d=710',
    'https://pakutaso.cdn.rabify.me/shared/img/thumb/YAMA_DSC9779.jpg.webp?d=1420',
  ],
};
