void main(List<String> args) {
  IDatabase database = SQL();
  database = Mongo(); // databasemi Mango ya çevirdik
}

// S
// bir class kendi amacını yapar.
class UserManager {
  String name;
  UserManager({
    required this.name,
  });
  void changeUserName(String name) {
    this.name = name;
  }
// burada yapma !! aşağı bak
  // void changeLocalization() {
  //   print('object');
  // }
}

class UserLocalization {
  final UserManager manager;

  UserLocalization(this.manager);
  void updateNameLocalization() {
    manager.changeUserName('bla');
    changeLocalization();
  }

  void changeLocalization() {
    print('object');
  }
}

//O
// açık kapalılık kuralına uygun olmalı
//core classlar kendi aralarında değişrtilememeli
// ama bundan türeyenler ile de büyüyebilmeli
class Product {
  final String name;
  final String money;

  Product(this.name, this.money);
}

//product ın özelliklerini kullanarak devam ediyorum.
class ProductCategories extends Product {
  ProductCategories(String name, String money) : super(name, money);
  final String category = "bla bla";
}

//L
//sen bir class yapıyorsan ben bu class ı alt dallardan üst dallarına eşitlenebilir
abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {}
}

class Mongo extends IDatabase {
  @override
  void write() {
    // TODO: implement write
  }
}

//I
// Interface lerin parçalanması
//abstract class IUserOperation // BU YANLIŞ KULLANIM DER VE AŞAĞI DA DOĞRUSU
abstract class IUserOperation with IUserLocation, ILanguage {
  void write();
  void read();
  void delete();
  // void locationChange(); aşağı da
  //void languageChange(); bu sayede user operasyonlarını parçalamış oluyoruz.
}

abstract class IUserLocation {
  void lacationChange();
}

abstract class ILanguage {
  void languageChange();
}

class UserLocation extends IUserLocation {
  @override
  void lacationChange() {
    // TODO: implement lacationChange
  }
}

//D
//bir üst sınıfımız var
// hiç bir zaman alt dal tutmamız lazım.

abstract class ICameraManager {
  void readQR();
  //final ICameraManager manager;   bunu yapmamaız lazım
}

// doğrusu bir tane daha class yapmak
class DeviceCameraManager extends ICameraManager {
  final IphoneCameraRead iphoneCameraRead;

  DeviceCameraManager(this.iphoneCameraRead);
  @override
  void readQR() {}
}

class IphoneCameraRead extends ICameraManager {
  @override
  void readQR() {}
}
