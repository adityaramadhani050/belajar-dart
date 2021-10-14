import 'package:shopping_cart/seller.dart';

class Shop {
  final int id;
  final String name;
  final List<Seller> _sellers = [];

  Shop({required this.id, required this.name});

  set seller(Seller val) =>
      (_sellers.contains(val)) ? _sellers.remove(val) : _sellers.add(val);
  List<Seller> get sellers => _sellers;
}
