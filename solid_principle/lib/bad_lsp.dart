// BAD

abstract class Product {
  String getName();
  int getPrice();
  DateTime getExpiredDate();

  void showProductInfo() {
    print('Product Info');
  }
}

class Vegetable extends Product {
  @override
  DateTime getExpiredDate() {
    return DateTime.now();
  }

  @override
  String getName() {
    return 'Broccoli';
  }

  @override
  int getPrice() {
    return 10000;
  }
}

class Smartphone extends Product {
  @override
  DateTime getExpiredDate() {
    return DateTime.now(); // smartphone ada kadaluarsa?
  }

  @override
  String getName() {
    return 'samsung';
  }

  @override
  int getPrice() {
    return 500000;
  }
}
