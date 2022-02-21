void main() {
  final model = CarModel(
      category: CarModels.bmw, name: 'bmw x5', money: 123, isSecondHand: false);
  final carItems = [
    CarModel(
        category: CarModels.bmw,
        name: 'bmw x5',
        money: 123,
        isSecondHand: false),
    CarModel(category: CarModels.toyota, name: 'yaris', money: 456),
    CarModel(
        category: CarModels.yamaha,
        name: 'yamaha nmax',
        money: 13323,
        isSecondHand: false),
    CarModel(category: CarModels.bmw, name: 'bmw x1', money: 125673),
    CarModel(
        category: CarModels.toyota,
        name: 'corolla',
        money: 12903,
        isSecondHand: false)
  ];

  //final resultCount = carItems.any((element) => element.isSecondHand == true); // any içerisinde buna uyan var mı? element içerisindeki elemanlar a bakar .
  // (element) => element.isSecondHand == true    -> caritem ın içeisinde 2.el var mı? olanları bana geri döndürür
  // ama bize kaç tane var o lazım. kodu düzenleyip where kullanmalıyız.
  final resultCount = carItems
      .where((element) => element.isSecondHand == true)
      .length; // bu carItems ın içinde 2.el varmı kontrol eder ve kaç tane var sa döndürür.
  print(resultCount);

  final newCar =
      CarModel(category: CarModels.bmw, name: 'bmw x1', money: 125673);

  final isHaveCar = carItems.contains(newCar);

  if (isHaveCar) {
    print('elimizde var');
  } else {
    print('elimizde yok alalım');
  }

  final resultBmwMore20 = carItems.where((element) {
    return element.category == CarModels.bmw && element.money > 20;
  }).join(); // join dediğimizde toString metodunu basyor. çıktısı : Instance of 'CarModel'Instance of 'CarModel'
// @override toString yaparak return nünü $name - $ money  yapıp  join ile ekranda name  ve money gelecektir.
  print(resultBmwMore20);

  final carNames = carItems // map yapmak demek bundan yeni object üretmek demek
      .map((e) => e.name)
      .join(
          ','); // e nin içindeki name lere göre  yeni bir nesne oluşturuyorum.
  print(carNames);

  try {
    // dene sonuç  geliyorsa mercedesCar ın name ni bastır
    final mercedesCar = carItems.singleWhere((element) =>
        element.category ==
        CarModels.mercedes); // singleWhere 1 tane varsa yeter
    print(mercedesCar.name);
  } catch (e) {
    print('mercedes araba yok abi');
  } finally {
    print('olmadı galiba'); // finally her türlü senaryoda çalışır
  }

  final index = carItems.indexOf(newCar); // newCar ın index numarasını bulur
  print(index); // 3
  final _mercedes =
      CarModel(category: CarModels.mercedes, name: 'e200', money: 123);
  carItems.add(_mercedes); // carItems a yeni araba ekliyoruz
  carItems.sort((first, second) =>
      first.money.compareTo(second.money)); // küçükten büyüğe doğru
  carItems.sort((first, second) =>
      second.money.compareTo(first.money)); // büyükten küçüğe doğru
  print(carItems);

  final users = carItems.expand((element) => element.users).toList();
  calculateToUser(carItems);
  carItems.remove(_mercedes);
  carItems.removeWhere(
      (element) => element.category == CarModels.bmw || element.money < 30);
  print(carItems);
}

void calculateToUser(List<CarModel> items) {
  // itemleri düzelt bmw olanları yamaha yap
  final newItems = items.map((CarModel e) {
    if (e.category == CarModels.bmw) {
      e.category = CarModels.yamaha;
    }
    if (e.isSecondHand) {
      e.isSecondHand = false;
    }
    return e;
  }).toList();

  print(newItems);
}

//benim bir arabalar sınıfım olavak
// arabaların modeli, ismi, parası kesin olarak şehri olmayacak, ikinci el durumu eğer müşteri söylemezse
// her ürün ikinci el kabul edilecek
// benim 5 tene arabam olcak
// benim bu arabalarımın kaç tanesi 2. el
// yeni bir araba geldi bu bizde var mı?
// bana bmw olan ve money si 20 den büyük olan arabaların ismini söyler misin
// acaba sadece isimleri yan yana gösterebilir misin
// benim  elinde mercedes var mı
// yeni gelen arabaya var demiştin. kaçıncı sırada
// ben yeni mercedes araba aldım  ekler misin
// bana arabaları küçükten büyüğe göre sıralar mısın
// son ekleneni silelim
// bmw olan ve 30 da düşük olanı silelim.

class CarModel {
  CarModels category;
  final String name;
  final double money;
  String? city;
  List<User> users;
  bool isSecondHand;

  CarModel({
    this.users = const [],
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarModel &&
        other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$name - $money';
  }
}

class User {}

enum CarModels { bmw, yamaha, toyota, mercedes }
