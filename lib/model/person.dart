class Person {
  final int id;
  final double popular;
  final String name;
  final String profileImg;
  final String known;

  Person(
      this.id,
      this.popular,
      this.name,
      this.profileImg,
      this.known,
      );

  Person.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        popular = json["id"],
        name = json["title"],
        profileImg = json["profileImg"],
        known = json["known"];

}
