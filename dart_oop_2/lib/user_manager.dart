import 'dart:async';

import 'package:shopping_cart/data_storage.dart';
import 'package:shopping_cart/user.dart';

class UserManager {
  DataStorage dataStorage;

  UserManager({required this.dataStorage});

  void saveData(User user) {
    dataStorage.save(user);
  }

  void loadData(User user) {
    dataStorage.load(user);
  }

  FutureOr<int> getAgeUser(User user) async {
    return await dataStorage.getAgeUser(user);
  }
}
