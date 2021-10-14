import 'package:shopping_cart/role.dart';
import 'package:shopping_cart/user.dart';

class Services {
  String? name;

  static final Services _instance = Services._internal();

  Services._internal() {
    print('this is constructor');
    name = 'no name';
  }

  factory Services() {
    return _instance;
  }

  Future<User> getUserdata() async {
    return User(name: 'adit', roleStatus: RoleStatus.admin, age: 22);
  }
}
