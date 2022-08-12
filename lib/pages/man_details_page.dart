import 'package:flutter/material.dart';
import '../widgets/button.dart';
import 'chat_page.dart';

class ManDetailsPage extends StatelessWidget {
  const ManDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      foregroundDecoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            Colors.blueAccent.withOpacity(0.0),
                            Colors.black.withOpacity(0.8),
                          ],
                        ),
                      ),
                      height: 400,
                      child: Image.network(
                        "https://pakutaso.cdn.rabify.me/shared/img/thumb/bakarizmPAR56935.jpg.webp?d=1420",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "ヤマダタロウ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "自己紹介",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Center(),
                      Text(
                        "はじめまして！プロフィールを見て頂きありがとうございます。\n大阪在住の〇〇（名前）といいます。\n結婚を考えていた相手とお別れしたことをきっかけにアプリを始めました！\n【仕事】\nシステムエンジニアをしています。\nお客さんと打合せしながら、日々新しいシステムを作っています。\n忙しい時期もありますが、大きなプロジェクトが無事に完遂して感謝のお言葉を頂いたときは達成感があります！\nパソコンについてはそこそこ詳しいので、困ったときはなんでも聞いてください😁笑\n【趣味】\nどちらかというとインドア派で、休日は映画を見たり楽器をいじったりすることが多いです。\nでも、たまに友達と飲みに行ったりドライブしたり旅行に行くのも大好きです！\n【性格】\n性格は明るい・ポジティブといわれることが多いです。\n割と人懐っこいので、初対面の相手とも仲良くなりやすいタイプです。\n彼女ができたら一緒に美味しいお店を探したり、まったり映画を観たりして楽しい時間を過ごしたいです。\n最後まで見ていただきありがとうございます。\nどうぞよろしくお願いします！",
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GoToMessageButton(
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).push(
                        MaterialPageRoute(
                          builder: (_) => const ChatPage(),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
              print("pop!");
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 64, horizontal: 16),
              height: 50,
              width: 50,
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
