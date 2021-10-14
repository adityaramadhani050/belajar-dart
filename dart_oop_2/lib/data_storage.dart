import 'dart:async';

import 'package:shopping_cart/user.dart';

abstract class DataStorage {
  void save(User user);

  void load(User user);

  FutureOr<int> getAgeUser(User user);
}
