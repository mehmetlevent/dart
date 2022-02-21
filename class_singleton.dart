import 'class_extends.dart';
import 'model/product_config_model.dart';

void main(List<String> args) {
  // yeni nesne oluşturmadan class ın içindeki moneyi çağırabilir. bu nasıl oluyor.
// class içindeki money static yaparak
  final newProduct = Product('leee');
  final newProduct2 = Product.money;
  calculateMoney(Product.money ?? 0);
  final user1 = User('leo', '15');

  final newProduct3 = Product(user1.product);
  final newProduct4 = Product.fromUser(user1);
  productNameChange();

  // apikey neydi acabaaaa
  ProductConfig.instance.apiKey;
//  ProductConfig("adfasdfas").apiKey; _ gizli yapıldığı için artık kullanılamaz
  ProductLazySingleton.instance;
}

void calculateMoney(int money) {
  if (money > 5) {
    print('5 tl daha ekledik');
    // Product.money += 5;
    Product.incerementMoney(10);
    print(Product.money);
  }
}

void productNameChange() {
  Product.money = null;
}

class Product {
  static int? money = 10;
  String name;

  Product(this.name);
  Product.leo([this.name = "leo"]);
  factory Product.fromUser(User user) {
    return Product(user.name);
  }

  static const companyName = "Leo Bank";
  static void incerementMoney(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
    }
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}
