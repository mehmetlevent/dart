void main(List<String> args) {
  final user = _User('leo', age: 21);
// müşterinin 1 den küçük kontrolü

  // if ((user.age ?? 0) < 18) {} // age null gelme olasılığı olduğu için ?? kullanılır yani varsa age al yoksa bunu kabul et demek

  if (user.age is int) {
    if (user.age! < 18) {
      //dart halan boş geleceğini düşündüğü için hata verir. ama ! işaret ni eklersen valla billa sayı bu demek
      // zaten üstteki if de sayı kontrolü yaptın için ! işareti koymaya çekinmiyoruz.
      print('küçük');
      user.updateMoneyWithString('TRY');
    } else {
      user.updateMoneyWithNumber(15);
    }
  }

  // kullanıcıların parası var ama paranın değişken olabilir.
  // parası olan adamın parametresi 1 isimde olabilir ya da değer olabilir.
  // tr yazacak ya da 15 olablilr.
  // ekranda göster
  final _newType = user.moneyType is String ? user.moneyType as String : "";

  print(_newType + "A");
  // print((user.moneyType as String) + "A");

  int money1 = 50;
  int money2 = 50;
  if (money1 == money2) {
    print('ok'); // sonu ok  u görürüz . çünkü sadece değerleri kontrol eder.
  }

  final bankMoney1 = Bank(45, '12', '');
  final bankMoney2 = Bank(30, '12', '');

  print(bankMoney1 ==
      bankMoney2); // sonuç false gelir . çünkü aynı değir mi değil aynı referans mı diye kontrol eder.
  // müşteri banka sınıfından iki kişinin parasını toplayıp sonucu söyler misin
  //print(bankMoney1 + bankMoney2); artıyı class bilmediği için kendi operatörümüzü yazmamız lazım.
  // operatörüüzü yazdık şimdi tekrar toplayalım
  print(bankMoney1 + bankMoney2);
  // benim bankama gelen müşterilerimin idsi aynı olan aynı müşteri lmalıdır.
  print(bankMoney2.toString());

  print('-------');
  print(bankMoney1 ==
      bankMoney2); // bankmoney1 ile bankmoney2 == operatörü ile id kontrolü yapılıp id eşitse true değilse false döner

// diğer bankadan bir modül aldık bunu ekleyip müşterimin parasını sorgulayalım.

// müşteri adamın parasına 10 tl ekle ekrana döndür adamın idsini 1 arttır sonrasında ismini leo yap
  bankMoney1.money += 10;
  print(bankMoney1.money);

  bankMoney1 // .. birden fazla nesneyi geri döndürüp tekrar işlem yaptıra biliyoruz.
    ..money += 10
    ..updateName('leo');

  print(bankMoney1);
}

class _User {
  final String name;
  int? age;

  //String moneyType = "TRY";
  dynamic
      moneyType; // hem string hem int olabilmesi için dynamic yaptık aşağıda 2 adet fonksiyon oluşturduk
  // ama oluşturulan fonksiyondan hangisi çalıştırılırsa tekrar girildiğinde farklı fonk çalışırsa . crash oluyor.
  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
}

class Bank with BankMixin {
  int money;
  String name;
  final String id;
  Bank(
    this.money,
    this.name,
    this.id,
  );
  int operator +(Bank newBank) {
    // operatörümüzü yazdık int geri dönüyor
    return this.money + newBank.money;
  }

  void updateName(String name) {
    this.name = name;
  }

  @override // ben bu işlemi yapacağım bu işlemi yaptıktan sonra kendime göre değiştiricem demek
  String toString() {
    return super.toString() + 'leo';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Bank && other.id == id;
  }

  @override
  int get hashCode => money.hashCode ^ id.hashCode;

  @override
  void sayBankHello() {
    calculateMoney(money);
  }
}

mixin BankMixin {
  // mixin birden fazla alt dallar olduğunda  yani birden fala yerde anlamı varsa kullanılır.
  void sayBankHello();

  void calculateMoney(int money) {
    print('money');
  }
}
