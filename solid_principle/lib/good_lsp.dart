// GOOD

abstract class Product {
  String getName();
  int getPrice();

  void showProductInfo() {
    print('Product Info');
  }
}

abstract class FoodProduct extends Product {
  DateTime getExpiredDate();
}

abstract class ElectronicProduct extends Product {
  int getWarrantyYear();
}

class Vegetable extends FoodProduct {
  @override
  String getName() {
    return 'Broccoli';
  }

  @override
  int getPrice() {
    return 10000;
  }

  @override
  DateTime getExpiredDate() {
    return DateTime.now();
  }
}

class Smartphone extends ElectronicProduct {
  @override
  String getName() {
    return 'samsung';
  }

  @override
  int getPrice() {
    return 500000;
  }

  @override
  int getWarrantyYear() {
    return 1;
  }
}
