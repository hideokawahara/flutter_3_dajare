class MyData {
  MyData({
    required this.name,
    required this.age,
    required this.gender,
    required this.profileMessage,
    required this.mainPhoto,
    required this.photoList,
  });
  final String name;
  final int age;
  final Gender gender;
  String profileMessage;
  //Todo: 将来的にfinalにする
  String mainPhoto;
  final List<String> photoList;

  factory MyData.fromJSON(Map<String, dynamic> json) {
    final List<String> setPhotoList;
    if (json['photo_list'] is List<String> && json['photo_list'].isNotEmpty) {
      setPhotoList = json['photo_list'];
    } else {
      setPhotoList = [];
    }
    return MyData(
      name: json['name'],
      age: json['age'],
      gender: json['gender'],
      profileMessage: json['profile_message'],
      mainPhoto: json['main_photo'],
      photoList: setPhotoList,
    );
  }
}

enum Gender {
  male,
  female,
  other,
}
