import 'package:flutter/material.dart';

import '../model/joke.dart';

class JokePostsViewModel extends ChangeNotifier {
  final List<Joke> _myJokeList = _dummyJokeList;
  List<Joke> get myJokeList {
    return [..._myJokeList];
  }

  String _jokeText = '';
  String get jokeText => _jokeText;
  set jokeText(String setText) {
    _jokeText = setText;
    notifyListeners();
  }

  Future<bool> postJoke() async {
    await Future.delayed(
      const Duration(
        milliseconds: 1000,
      ),
    );
    return true;
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
