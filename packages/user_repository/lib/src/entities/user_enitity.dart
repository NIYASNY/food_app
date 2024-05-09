class MyUserEntity {
  String userId;
  String email;
  String name;
  bool isActivecart;

  MyUserEntity(
      {required this.userId,
      required this.email,
      required this.name,
      required this.isActivecart});

  Map<String, Object?> toDocument() {
    return {
      "userId": userId,
      "email": email,
      "name": name,
      "isActivecart": isActivecart
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity(
        userId: doc['userId'],
        email: doc['email'],
        name: doc['name'],
        isActivecart: doc['isActivecart']);
  }
}
