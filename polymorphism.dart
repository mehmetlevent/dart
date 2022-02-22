


// polymorphism dediğimiz kavaram ortak interface den ortak method dan farklı class larda farklı anlmları
//çalıştırarak işlerini yapması olarak düşünebiliriz.

//Aşağıda IUSer dan Turk  ve English implement edililerek türk e ne yapacağını
// English e ne yapcağını tanımlatıp. main de çağırıyoruz
void main(List<String> args) {
  IUser user = Turk();
  user.sayName();
  user = English();
  user.sayName();
}

abstract class IUser {
  final String name;

  IUser(this.name);
  void sayName() {}
}

class Turk implements IUser {
  // IUser dan aynısı türettik
  @override
  String get name => 'leo';

  @override
  void sayName() {
    print('merhaba $name');
  }
}

class English implements IUser {
  @override
  String get name => 'john';

  @override
  void sayName() {
    print('hi $name');
  }
}
