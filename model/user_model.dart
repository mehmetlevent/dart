// adi olmak zorunda
// parası olmak zorunda
// yaşını vermeye bilir
// city i mermeyebilir
// city yoksa ist kabul et
// id sine sadece bu sınıf içinden erişilebilir.

class User {
  // class oluştururken verilen isim büyük harfle başlar
  // özellikleri neler
  late final String name;
  late int money;
  late final int? age; // soru işareti null olabilir demek
  late final String? city;
  late final String userCode;
  late final String
      _id; // _ gizli yapmak istediğimiz değişkenden önce kullanıp onu gizliyoruz.

  User(String name, int money, {required String id, int? age, String? city}) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    _id = id;
    userCode = (city ?? 'ist') +
        name; // ?? city yoksa inst yaz demek. o değilse bu gibi
  }
  bool isSpecialUser(String id) {
    return _id == id;
  }

  bool get isEmpty => _id.isEmpty; 
  // bool isEmptyId() {
  //   return _id.isEmpty;
  // }
}
