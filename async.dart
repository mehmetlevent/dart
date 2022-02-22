Future<void> main(List<String> args) async {
  print('a');
  // 5 sn bekle gel hiçbir müşteri alma
// await  Future.forEach([1, 2, 3, 4, 5, 6], (int element) async { // burada await verdiğimiz zaman bu işlem bitmeden aşağısındaki print('ab') çalışmayacak.
  //await olmazsa önce a sonra ab sonra işlem bitti çalışacak
//    await Future.delayed(Duration(seconds: 2)); // işlemin başında await denilmezse işlem normal başlar
//     print('işlem  bitti $element');
//   });
  //await Future.delayed(Duration(seconds: 2));
  Stream<int> bankMoney = Stream.empty(); // sync sekron yapma streem ile
  bankMoney = dataBankMoney(15, 3);
  bankMoney.listen(
    (event) {
      print(event);
    },
  );

  print('ab');

  print('hello');
  Future.delayed(Duration(seconds: 1)).whenComplete(() {
    print('hello2');
  });
  print('hello3');
  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print('hello4');
  });
}
// önce main biter sonra async başlar

// biir servise istek atma, matematik işlemi var zaman alacak

// async denilince Future
//future servis istekleriniz olur işlemleriniz olur. onlar için kullanacağınız async yapılar!
Stream<int> dataBankMoney(int retryCount, int money) async* {
  int _localRetry = 0;
  await Future.delayed(Duration(seconds: 1));
  while (_localRetry < retryCount) {
    _localRetry++;
    yield money += 5; //haber vermek için yield
  }
}
