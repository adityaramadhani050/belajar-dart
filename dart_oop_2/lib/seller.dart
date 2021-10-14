import 'package:shopping_cart/product.dart';

class Seller {
  final int id;
  final String name;
  final List<Product> products;

  Seller({required this.id, required this.name, required this.products});
}
