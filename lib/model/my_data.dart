class MyData {
  MyData({
    required this.name,
    required this.age,
    required this.profileMessage,
    required this.mainPhoto,
    required this.photoList,
  });
  final String name;
  final int age;
  final String profileMessage;
  final String mainPhoto;
  final List<String> photoList;

  factory MyData.fromJSON(Map<String, dynamic> json) {
    return MyData(
      name: json['name'],
      age: json['age'],
      profileMessage: json['profile_message'],
      mainPhoto: json['main_photo'],
      photoList: json['photo_list'],
    );
  }
}
