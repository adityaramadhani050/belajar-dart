import 'package:shopping_cart/data_storage.dart';
import 'package:shopping_cart/user.dart';

class LocalStorage implements DataStorage {
  @override
  void load(User user) {
    print('menampilkan data user ${user.name} dari local');
  }

  @override
  void save(User user) {
    print('menyimpan data user ${user.name} di local');
  }

  @override
  int getAgeUser(User user) {
    return 10;
  }
}
