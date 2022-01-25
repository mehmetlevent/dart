void main() {
  // bir bankaya 10 müşteri gelir. bunların 100 tl si 110 tl ve 50 tl si vardır.
  final int money = 100;
  final int money2 = 110;

  // 100 buyuk hoşgeldiniz beyfendi.

  if (money > 100) {
    print('beyfendi');
  }
  if (money2 > 100) {
    print('aa');
  }

  String name = '';
  List<int> moneys = [100, 110, 500, 200, 300];
  final List<int> newMoney = [100, 110, 500, 200, 300];
  print('MÜSTERİ1 parası: ${moneys[0]}');

  // müşterinin parsını sırla
  moneys.sort();

//müşteriye para ekle (add parayı sona ekliyor)
  moneys.add(15);
//müşteriye para ekle. birinci parametre index numarası 2. parametre tutarı
  moneys.insert(0, 90);

// final ile tanımlanan listesteyi değiştiremezsin ama içeriğini değiştirebilirsin.
  newMoney.add(35);

  newMoney.sort();
  print(moneys);
  print(newMoney);

  // newMoney.reversed.toList(); // newmoney listesini tersini alır
  print('--------');

  // newMoney.clear(); newmoney listesini temizler
  // print(newMoney);

  // 100 tane müşteri yap bunların hepsine sira ile numarasına göre 5 tl ekle
  List<double> costemerMoney = List.generate(100, (index) {
    //generate müşteri oluşturmak için kullanıldı.
    return index + 5; // index numarasına 5 tl ekleyerek bize geri döndür.
  });
  print(costemerMoney); // oluşturduğumuz 100

  List<int> moneyCostumerNews = [100, 30, 40, 60, -5];
  moneyCostumerNews.sort();
  for (int index = 0; index < moneyCostumerNews.length; index++) {
    print('müşteri parası: ${moneyCostumerNews[index]}');

    if (moneyCostumerNews[index] > 35) {
      print('kredi hazir');
    } else if (moneyCostumerNews[index] > 0) {
      print('kredi veremeyiz ama yine de bakalım');
    } else {
      print('bye bye');
    }
    print('--------');
  }
  print('-*-*-*-*-*-*-*-');
  for (int index = moneyCostumerNews.length - 1; index >= 0; index--) {
    print('müşteri parası: ${moneyCostumerNews[index]}');
    if (moneyCostumerNews[index] > 35) {
      print('kredi hazir');
    } else if (moneyCostumerNews[index] > 0) {
      print('kredi veremeyiz ama bi bakalım');
    } else {
      print('bye byyyyyy');
    }
  }
  print('-*-*-*-*-*-*-*-');
  /* List<dynamic> users = [
    1,
    'a',
    true
  ]; //listeler bu şekilde yapılabilir ancak önerilmez.
  for (var item in users) {
    print(item);
  } */
  List<String> userNames = ['ali', 'veli0', 'ayşe'];
  print(userNames.contains('ayşe'));
  for (var item in userNames) {
    if (item == 'ayşe') {
      print(item);
    }
  }
}
