import 'package:solid_principle/solid/piston.dart';

class Energy {
  final int ron;

  Energy(this.ron);

  void push(Piston piston) {
    piston.move(ron * 2);
  }
}
