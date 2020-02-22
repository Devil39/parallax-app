class User{
  String uid;
  String name;

  User({
    this.uid,
    this.name
  });

  factory User.fromJson(dynamic json){
    return User(
      uid: json["uid"],
      name: json["name"]
    );
  }
}