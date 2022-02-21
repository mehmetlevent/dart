class ProductConfig {
  static final ProductConfig instance = ProductConfig._('a');

  final String apiKey;

  ProductConfig._(this.apiKey); // sadece burada kullanılbilir.

  // ProductConfig(this.apiKey); herkes çağırır ve değiştirebilir.

}

class ProductLazySingleton {
  static ProductLazySingleton? _instace;
  static ProductLazySingleton get instance {
    if (_instace == null) _instace = ProductLazySingleton._init();
    return _instace!;
  }

  ProductLazySingleton._init();
}
