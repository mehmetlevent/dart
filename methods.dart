void main() {
  //benim bi müşterim var parası varmı kontrol eder misin?

//benim müşterimin parası sıfır diye baktık ama onu5 tl yapalım derse.
//yine tüm kullanıcılara tek tek kontrol edilen paranın 5 tl olarak değiştirilmesi gerekmekte.
// biz de bu adam zırt pırt değiştirecek heralde ozaman ben de controlUserMoney e bi tane daha parametre gönderirim.
  final int userMoney = 0;
  controlUserMoney(userMoney,
      0); // fonksiyona müşterinin parasını parametre olarak giriyoruz. çalıştırdığımızda method içerisindeki işlemleri yapıp geri dönecek ya da ekrana yazacak. sen ne istersen
  // (userMoney,0) 0 a göre para kontrolü.
  // if (userMoney > 0) {
  //   print('parası var');
  // } else {
  //   print('parası yok');
  // }
  // benim bi müşterim daha geldi onada bakar mısın?
  final int userMoney2 = 10;
  controlUserMoney(userMoney2, 5); //(userMoney,5) 5 e göre para kontrolü
  // if (userMoney2 > 0) {
  //   print('parası var');
  // } else {
  //   print('parası yok');
  // }

  // bunun sonu yok. sürekli müşteri gelir vve sürekli aynı şeyleri yapmak amelelik oluyor ve böyle durumlarda fonksiyon yazma gereği ortaya çıkıyor.

/*
Farklı senaryo yapalım. 
Yeni müşteri geliyor ve parası 50 tl.
parasını dolar yapmak istiyor ve kaç dolaptığını hesaplanmasını istiyor.


*/

  final newUserMoney = 150;
  int result = convertToStaticDolar(
      newUserMoney); // call çağırma işlemini yapıp neeUserMoneyi parametre olarak gönderiyorum. ve result a gelen işlemi atama yapıyorum.
//bana bir dolar hesaplama yap eğer ben yeni bir durum var demezsem doları 13 tl hesapla
  // int result2 = convertToDolar(newUserMoney, 15);  yorumu kaldırdığınızda 2. parametre olan 15 kızmaya başlar çünkü değeri girdik ama artık algılamıyor. allta ki satırda ne yacağın yazıyor.
  final int result3 = convertToDolar(100, dolarIndex: 15);
  print(result3);

  print(
      ' dolar karşılığı: $result'); // ekrana result u basıyorum. işlemde gördüğün \' işareti kesme işaretini kaçırmak için için kullanıyorsun
  // print('verilen $newUserMoney tl\'nin dolar karşılığı: $result2');
  print('dolar karşılığı: $result3');

  final newResult = convertToEuro(
      userMoney:
          50); //user money methodda required olduğundan girilmesi zorunlu.
  print(newResult);
}

// gelen müşterilerin parasını kontrol etmek için fonksiyon yazalım.
void controlUserMoney(int money, int minimumValue) {
  //() içerisine parametre gelecekse doldurulur. burada adamın parasını alıyoruz. pra sayısal olduğu için int olarak belirtiyoruz.
  // methodu oluşturduk. şimdi yukarıda bunu kullanıcaz.
//if (money > 0) 0 a göre sorgu
  if (money > minimumValue) {
    // kullanıcının istediği parayı kotrol etmek için ninumumMoney i buraya aldık. böylece kullanıcı 0 gönderirse 0 a göre kontrol, 5 gönderirse 5 e göre kontrol yapacak.
    print('para Var');
  } else {
    print('para yok');
  }
}

//void convertToDolar(int userMoney) {
//print(userMoney / 13);  // üşterinin parasını hesaplar ve ekrana yazdırır.
//}
//ama müşterinin parasını ekrana bastırma bana ver sen o bilgileri ben istersem paylaşırım derse.

// altta ki şekilde yzılan methodlar ->parametre yollanıp ve geriye değer döndürülen methodlar anlamına geliyor.

int convertToDolar(int userMoney, {int dolarIndex = 13}) {
  // parametreyi opsiyonel yapacak olursak süslü parantezler içine alıyoruz. ama mutlaka sabit değeride yazmalıyız. yani eğer fiyat parametre gelmezse belittiğin değeri kabul eder. fonksiyona ben 13 yazdım.
  return userMoney ~/ dolarIndex;
}

int convertToStaticDolar(int userMoney) {
  //doları sabit alırsak yapacağımız metad
  return userMoney ~/ 13;
  // userMoney / 13 işlemi yapınca dart kızıyor. int tam sayı olduğu için bölüm yapayız diyor.  bölüm işleminin önüne ~ işaretini koyduğumuzda aşağı ya da yukarı tamamlar. 0,49 aşağı 0,51 yukarı
}

int convertToEuro({required int userMoney, int dolarIndex = 14}) {
  //required eklendi çükü null olamaz. mutlaka veri girilmeli. yukarı call edildiğinde otomatik geliyor fark ettiysen
  return userMoney ~/ dolarIndex;
}

