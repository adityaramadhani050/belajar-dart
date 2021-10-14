import 'dart:async';

import 'package:shopping_cart/data_storage.dart';
import 'package:shopping_cart/user.dart';

class FirebaseStorage implements DataStorage {
  @override
  void load(User user) {
    print('menampilkan data user ${user.name} dari firebase');
  }

  @override
  void save(User user) {
    print('menyimpan data user ${user.name} di firebase');
  }

  @override
  Future<int> getAgeUser(User user) async {
    await Future.delayed(Duration(seconds: 3));
    return 22;
  }
}
