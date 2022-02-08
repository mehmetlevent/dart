import 'enum2.dart';

void main(List<String> args) {
  final customerMouse = Mouses.logitech;

  print(customerMouse.index);

  if (customerMouse == Mouses.logitech) {}
  if (customerMouse == 'logitech') {}
}

enum Mouses {
  magic,
  apple,
  logitech,
  a4,
} // enum demek sınıflandırma demek

// mouses a bir uzanti ekliyorum.
extension MousesLeo on Mouses (String? name) {
  bool isCheckName(String name) {
    return this.name == name;
  }
}
