import 'model/user_model.dart';

void main(List<String> args) {
  final userNormal = User('lb', 15);
  final userBank = BankUser('name', 155);
  final userSpeal = SpecialUser('dsadfsad', 545, 4546, 30);

  userNormal.sayMoneyWithCompanyName();
  userBank.sayMoneyWithCompanyName();
  userSpeal.sayMoneyWithCompanyName();
}

// paralarını görebilmelerini istiyorum benim banka ismim ile birlikte.
abstract class IUser {
  final String name;
  final int money;

  IUser(this.name, this.money);

  void sayMoneyWithCompanyName() {
    print('$name- $money paranız var');
  }
}

class User extends IUser {
  //final String name;
  //final int money; bunları artık tanımlamana gerek yok zaten Iserda extend edildiği için constracter da this.name yerine String name yatın mı tamamdır.

  User(String name, int money)
      : super(name,
            money); // süper Iser dan türediği için name ve money i taşımaya yarar.
}

class BankUser extends IUser {
  // final String name;
  // final int money;

  // BankUser(this.name, this.money) : super(name, money);
  BankUser(String name, int money) : super(name, money); // taaak tek satır.

  void bankSpecialLogic() {
    print(money);
  }
}

class SpecialUser extends IUser {
  // final String name;
  // final int money;
  // final int bankingCode;
  late final int _disccount;

  // SpecialUser(this.name, this.money, this.bankingCode, int disccount)
  //     : super(name, money) {

  // }
  SpecialUser(String name, int money, int bankingCode, int disccount)
      : super(name, money) {
    _disccount = disccount;
  }

// indirimli fiyatım ne kadar
  int get calculateMoney => money - (money ~/ _disccount);
  // int calculateMoney() {
  //   return money -( money ~/ _disccount);
  // }
}
