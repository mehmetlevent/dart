import 'model/user_model.dart';
import 'model/user_model_2.dart';

void main() {
  // müşteri adi var , parası var, yaşı var
  final int customerMoney = 50;
  final String customerName = "leo";
  final int customerAge = 13;
  final String customerCity = "Ardahan";

// müşterimin yaşı 10 dan büyükse bu işlemi yapalım.
  controlCustomerAge(customerAge);

  //yeni müşteri geliyor yine aynı alanlar
  final int customerMoney2 = 50;
  final String customerName2 = "leo";
  final int customerAge2 = 15;
  final String customerCity2 = "asadas";
  controlCustomerAge(customerAge2);

  // müteriler arttıkça artıyor . onları gruplasam ve aynı özellikleri bir araya getirsem

// müşteri diyor ki ya bak bizim bir servisimiz var paraları veren eğer bir cevao vermezse sen ana değer olarak 10 ata
  // print(newMoney! + 10);
  // print(newMoney +10);
  int? newMoney;
  if (newMoney != null) {
    print(newMoney + 50);
  } else {
    print(10 + 10);
  }
  //bankaya 3 tane müşteri gelir birinin 100 tl si var diğerinin hesabı hiç yok diğerinin 0 tl si var.
  //hesabı olmayana gelin hesap açalım, 0 tl si olanı kov, 100 tl si olana müşterim hoşgeldin

  // yeni metod olsun. bu metod da hesabı olmayanları ve parası olmayanları yok sayalım.
  // para verdiklerimizi ekranda true yazalım.
  //
  List<int?> customerMoneys = [
    100,
    null,
    0
  ]; // müşterileri liste olarak istenilgiği gibi oluşturduk.

  for (var item in customerMoneys) {
    if (item != null) {
      if (item > 0) {
        print('beyfendi hoşgeldin.');
      } else {
        print('bye bye');
      }
    } else {
      print(' size hesap açalım');
    }

    // -----
    bool result = controlMoney(item) == null ? false : true;
    print(result);
  }

  print('--------' * 10);

  int customerMoneyX = 15;
  User user1 = User('lb', 15, age: 17, city: 'erer', id: '123');
  User user2 = User('lb2', 11, city: 'istanbul', id: '123');
  final user3 = User('name', 158, id: '12');
  print(user3
      .userCode); // user3 e herhangi bir city girişi yapılmadığı için userCode yazdırdığımızda istname olarak dönecek.
  print(user1.name);

  // müşteri son gelen kişinin cityisini göre kampanya yapacak. eğer istanbul ise
  if (user2.city == null) {
    print('müşteri şehir bilgisi vermemiş.');
  } else {
    if (user2.city!.isEmpty) {
      print('ok');
    }

    if (user2.city == 'istanbul') {
      print('tebrikler kazandınız.');
    }
  }

// müşteri id si 12 olanlara indirim yap
  if (user3.isSpecialUser('12')) {
    user3.money += 5;
    print('para eklendi.');
  }

  User2 newUser2 = User2('leooo', 45);
  newUser2.money += 5;
  newUser2.money = null;
  print(newUser2.toString());
}

int? controlMoney(int? money) {
  if (money != null && money > 0) {
    return money;
  }
}

void controlCustomerAge(int value) {
  if (value > 10) {
    print('alışveriş yapaiblirsin');
  } else {
    print('alışveriş yapamazsın.');
  }
}
