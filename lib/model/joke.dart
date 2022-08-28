class Joke {
  Joke({
    required this.authorName,
    required this.authorAge,
    required this.authorImage,
    required this.contents,
    required this.likesCounts,
  });
  String authorName;
  int authorAge;
  String authorImage;
  String contents;
  int likesCounts;

  factory Joke.fromJSON(Map<String, dynamic> json) {
    return Joke(
      authorName: json['author_name'],
      authorAge: json['author_age'],
      authorImage: json['author_image'],
      contents: json['contents'],
      likesCounts: json['likes_counts'],
    );
  }
}
