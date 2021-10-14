import 'package:shopping_cart/connect_to_api.dart';
import 'package:shopping_cart/employee.dart';
import 'package:shopping_cart/hero.dart';
import 'package:shopping_cart/local_storage.dart';
import 'package:shopping_cart/monster.dart';
import 'package:shopping_cart/person.dart';
import 'package:shopping_cart/person_database.dart';
import 'package:shopping_cart/role.dart';
import 'package:shopping_cart/services.dart';
import 'package:shopping_cart/student.dart';
import 'package:shopping_cart/user.dart';
import 'package:shopping_cart/user_manager.dart';

void percobaanFutureOr() async {
  User user = User(name: 'adit', roleStatus: RoleStatus.admin, age: 22);
  UserManager userManager = UserManager(dataStorage: LocalStorage());
  userManager.saveData(user);
  userManager.loadData(user);
  print(await userManager.getAgeUser(user));
}

void singleton() async {
  Services service1 = Services();
  Services service2 = Services();
  User user = await service1.getUserdata();

  print(identical(service1, service2));
  print(user.name);
  print(service1.name);
  service2.name = 'riki';
  print(service1.name);
}

void operatorOverriding() {
  Monster monster1 = Monster(power: 10);
  Monster monster2 = Monster(power: 10);
  print((monster1 + monster2).power);
  print(monster1 == monster2);
  print(monster1 > monster2);
}

void asyncAwait() {
  PersonDatabase person = PersonDatabase();
  PersonDatabase person2 = PersonDatabase();
  PersonDatabase person3 = person;

  print(person == person2); // false
  print(person == person3); // true

  var api = ConnectToAPI<String>('data api', 'adit.com');
  print(api.getData('adit.com'));

  person.getDataAsync2().then((value) {
    print('job 0 Name: ${value[0]} Status: ${value[1]}');
  });
  print('job 1');
  print('job 2');
  person.getDataAsync().then((value) {
    print('job 3 Name: ${value[0]} Status: ${value[1]}');
  });
  print('job 4');
  print('job 5');
}

void percobaanConst() {
  Hero hero = const Hero(name: 'kadita');
  Hero hero2 = const Hero(name: 'kadita');
  print(identical(hero, hero2));
}

void genericType() {
  Person person1 = Person<Student>(
    name: 'anton',
    data: Student(school: 'smk 3'),
  );
  print(person1.status);
  print((person1.data as Student).school);
}

void enumCascadeNotation() {
  Employee employee = Employee(
    name: 'rudi',
    office: 'telkom',
    status: employeeStatus.tetap,
  );
  print('welcome to office');
  employee
    ..doingJob()
    ..takeARest();
}

void customSort() {
  List<User> users = [
    User(name: 'adit', roleStatus: RoleStatus.admin, age: 22),
    User(name: 'fani', roleStatus: RoleStatus.user, age: 15),
    User(name: 'rudi', roleStatus: RoleStatus.seller, age: 30),
    User(name: 'joko', roleStatus: RoleStatus.user, age: 55),
    User(name: 'reza', roleStatus: RoleStatus.user, age: 18),
    User(name: 'rafli', roleStatus: RoleStatus.seller, age: 14),
    User(name: 'rama', roleStatus: RoleStatus.admin, age: 34),
  ];

  users.sort((u1, u2) {
    if (u1.weight - u2.weight != 0) {
      return u1.weight - u2.weight;
    } else {
      return u1.age.compareTo(u2.age);
    }
  });

  for (User user in users) {
    print('${user.status} - ${user.name} - ${user.age}');
  }
}
