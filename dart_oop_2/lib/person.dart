import 'package:shopping_cart/student.dart';

class Person<T> {
  final String? name;
  final T? data;
  Person({this.name, this.data});

  String get status =>
      '$name berstatus ${(T == Student) ? 'pelajar' : 'karyawan'}';

  T? get getData => data;
}
