import 'package:user_repository/src/entities/entities.dart';

export 'user.dart';

class MyUser {
  String userId;
  String email;
  String name;
  bool isActivecart;

  MyUser(
      {required this.userId,
      required this.email,
      required this.name,
      required this.isActivecart});

  static final empty =
      MyUser(userId: '', email: '', name: '', isActivecart: false);

  MyUserEntity toEntity() {
    return MyUserEntity(
      userId: userId,
      email: email,
      name: name,
      isActivecart: isActivecart,
    );
  }

  static MyUser fromEntity(MyUserEntity entity) {
    return MyUser(
        userId: entity.userId,
        email: entity.email,
        name: entity.name,
        isActivecart: entity.isActivecart);
  }

  @override
  String toString() {
    return "MyUser: $userId, $email, $name, $isActivecart";
  }
}
