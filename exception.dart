void main(List<String> args) {
//  String? userName;
  String userName = "a";

  // try {
  //   if (userName!.length > 2) {
  //     print('aaa');
  //   }
  // } catch (e) {
  //   print(e);
  // }

  if (userName.length > 2) {
    print('aaa');
  } else {
    throw UserNameException();
  }
}

// kendi exception larımızı yazabiliriz.

class UserNameException implements Exception {
  @override
  String toString() {
    return 'username i null girmişsin';
  }
}
