import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/pages/photo_edit_page.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'マイページ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const MyPageBody(),
    );
  }
}

class MyPageBody extends StatelessWidget {
  const MyPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 16,
          ),
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                backgroundImage: Image.network(
                  "https://pakutaso.cdn.rabify.me/shared/img/thumb/yumikoPAR52492.jpg.webp?d=1420",
                  fit: BoxFit.cover,
                ).image,
                radius: 65,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(
                      builder: (_) => const PhotoEditPage(),
                    ),
                  );
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.white, width: 4),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "チアキ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "26歳",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          introduceSection(),
        ],
      ),
    );
  }

  Widget introduceSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "自己紹介",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "はじめまして！プロフィールを見ていただきありがとうございます\n都内の商社で営業事務をしている〇〇（名前）といいます。\n女性が多い職場でなかなか出会いがなく、思い切って登録してみました！\n休日はヨガに行って汗を流したり、料理をしたりして過ごしています。\n（最近はチョコケーキを極めるのにハマっています！）\nあと、国内外問わず旅行も大好きです！\n音楽は邦ロックが好きで、夏には友達とフェスに参戦したりしています♪\n邦ロック以外もいろいろ聴くので、おすすめの音楽があればぜひ教えてください(*’ω’*)\n性格はおっとりしていると言われることが多いですが、自分ではやるときはやる性格だと思っています\n恋人とはお互いの趣味を共有し合ったり、自然体でいられる関係が理想です\nまずは気軽にカフェなどでお話できたら嬉しいです。そうぞよろしくお願いします！",
          ),
        ],
      ),
    );
  }
}
