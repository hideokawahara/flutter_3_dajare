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
  'gender': Gender.female,
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

Map<String, dynamic> _dummyMyData2 = {
  'name': 'ヒロシ',
  'age': 26,
  'gender': Gender.male,
  'profile_message':
      'はじめまして！プロフィールを見て頂きありがとうございます。\n大阪在住の〇〇（名前）といいます。\n結婚を考えていた相手とお別れしたことをきっかけにアプリを始めました！\n【仕事】\nシステムエンジニアをしています。\nお客さんと打合せしながら、日々新しいシステムを作っています。\n忙しい時期もありますが、大きなプロジェクトが無事に完遂して感謝のお言葉を頂いたときは達成感があります！\nパソコンについてはそこそこ詳しいので、困ったときはなんでも聞いてください😁笑\n【趣味】\nどちらかというとインドア派で、休日は映画を見たり楽器をいじったりすることが多いです。\nでも、たまに友達と飲みに行ったりドライブしたり旅行に行くのも大好きです！\n【性格】\n性格は明るい・ポジティブといわれることが多いです。\n割と人懐っこいので、初対面の相手とも仲良くなりやすいタイプです。\n彼女ができたら一緒に美味しいお店を探したり、まったり映画を観たりして楽しい時間を過ごしたいです。\n最後まで見ていただきありがとうございます。\nどうぞよろしくお願いします！',
  'main_photo':
      'https://pakutaso.cdn.rabify.me/shared/img/thumb/tanteiPAR52159.jpg.webp?d=1420',
  'photo_list': [
    'https://pakutaso.cdn.rabify.me/shared/img/thumb/tanteiPAR52095.jpg.webp?d=1420',
    'https://pakutaso.cdn.rabify.me/shared/img/thumb/yuseiookawa1971923.jpg.webp?d=1420',
    'https://pakutaso.cdn.rabify.me/shared/img/thumb/yuseiookawa1971903.jpg.webp?d=1420',
    'https://pakutaso.cdn.rabify.me/shared/img/thumb/tanteiFTHG0367.jpg.webp?d=1420',
    'https://pakutaso.cdn.rabify.me/shared/img/thumb/OYtantei0I9A0058.jpg.webp?d=710',
  ],
};
