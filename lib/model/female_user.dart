class FemaleUser {
  FemaleUser({
    required this.name,
    required this.age,
    required this.mainPhoto,
    required this.photoList,
    required this.profileMessage,
    required this.preference,
  });
  String name;
  int age;
  String mainPhoto;
  List<String> photoList;
  String profileMessage;
  Preference preference;

  factory FemaleUser.fromJSON(Map<String, dynamic> json) {
    return FemaleUser(
      name: json['name'],
      age: json['age'],
      mainPhoto: json['main_photo'],
      photoList: json['photo_list'],
      profileMessage: json['profile_message'],
      preference: json['preference'],
    );
  }
}

enum Preference {
  black,
  vulgar,
  intelligence,
}
