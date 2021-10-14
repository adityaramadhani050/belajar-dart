import 'package:shopping_cart/role.dart';

class User extends Role {
  String name;
  final int age;
  final RoleStatus roleStatus;

  User({required this.name, required this.roleStatus, required this.age})
      : super(roleStatus);

  set changeName(String newName) {
    name = newName;
  }
}
