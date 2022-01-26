void main() {
  // müsteri geldi adı mehmet parası 20
  Map<String, int> users = {'ahmet': 20, 'mehmet': 30};

  print('ahmetin parası ${users['ahmet']}'); //müşteri ahmetin parası

  for (var item in users.keys) {
    print(
        '${item} - ${users[item]}'); // müşterilerin keyleri arasında gezerek müşterilerin key ve value larnı yazdıracak
  }
  print('---------');
  for (var i = 0; i < users.length; i++) {
    // users ın length i kadar dolaş
    print(
        '${users.keys.elementAt(i)}- ${users.values.elementAt(i)}'); // elementAt users ın key ini ve valuesunu döndürüyor.
  }
  // ben bankayım. benim müşterilerimin birden fazla hesabı olablir .
  // ahmet beyi 3 hesabı var sırasıyla 10, 300, 200
  // mehmet byin 2 hesabı var 30, 50
  // veli beyin 1 hesabı var 30

  // adamları hesaplarını kontrol et herhangi bir hesapta 150 tl den fazla olan varsa krediniz hazır de

  print('---------');
  final Map<String, List<int>> labank = {
    // final yaparak labankın değişimini engelliyoruz. ama içerisindeki referansla içerinde value ları değiştirebiliyoruz.
    // map oluştumam gerektiğini key value dan anlıyorum ama Map i List olarak oluşturmam gerekiyor.
    'ahmet': [
      100,
      300,
      200
    ] // ahmet beyin 3 hesapta farklı biktarda parası olduğu için
  };
  labank['mehmet'] = [
    30,
    50
  ]; // labank a mehmet isimli mşteri ve 2 hesabına 30 ve 50 tl para ekleyelim.
  labank['veli'] = [30]; // veli adına hesap açık 30 tl eklendi.
  for (var item in labank.keys) { // break kullanınca for scope u sonlanıyor. 
    // 1. for da bankanın tüm elemanları
    for (var money in labank[item]!) {
      // ! işareti müşterilerin hesapları null gelme ihtimaline karşı
      // userın hesaplarını dolaşıyorum.
      if (money > 150) {
        print('kredi hazir');
        break; // burada return kullanınca program duruyor ve aşağıya inmiyor. inanmıyorsan test et :)
      }
    }
  }
  // bankaadi müşterilerin hesaplarının toplam mevlasını merak ediyorum.
  for (var name in labank.keys) {
    int result = 0;
    for (var money in labank[name]!) {
      // labank[name]! benim için anlamı müşterilerin hesapları demek
      result = result + money;
    }
    print('$name senin toplam paran -> $result');// 
  }
}
