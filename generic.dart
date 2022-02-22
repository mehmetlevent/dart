void main(List<String> args) {
  final user = User(
      data:
          'data'); // data yı string verirsen string e döner. sayı girersen int a döner.
}

void removeUserAll<T extends IAdmin>(T data) {
  // userları silmek için admin yetkisi lazım. o zamam T type yapar buişlemleri admin yapacağından eminsen adminden türemesini istiyorsun
  data.removeUser();
}

class User<T> {
  T data;
  User({
    required this.data,
  });
}

abstract class IAdmin {
  void removeUser();
}

class AdminUser extends IAdmin {
  @override
  void removeUser() {}
}
