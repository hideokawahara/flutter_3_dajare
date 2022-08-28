class FemaleUser {
  FemaleUser({
    required this.name,
    required this.age,
    required this.mainPhoto,
    required this.preference,
  });
  String name;
  int age;
  String mainPhoto;
  Preference preference;

  factory FemaleUser.fromJSON(Map<String, dynamic> json) {
    return FemaleUser(
      name: json['name'],
      age: json['age'],
      mainPhoto: json['main_photo'],
      preference: json['preference'],
    );
  }
}

enum Preference {
  black,
  vulgar,
  intelligence,
}
