import 'package:solid_principle/solid/battery.dart';
import 'package:solid_principle/solid/car.dart';
import 'package:solid_principle/solid/electric_engine.dart';
import 'package:solid_principle/solid/motorcycle.dart';
import 'package:solid_principle/solid/oil.dart';
import 'package:solid_principle/solid/petrol_engine.dart';
import 'package:solid_principle/solid/tank.dart';

void main(List<String> arguments) {
  Car mobilSedan = Car<Oil>(PetrolEngine(), Tank());
  mobilSedan.refill(PertamaxTurbo());
  mobilSedan.accelerate();
  mobilSedan.wiper();

  Motorcycle motor = Motorcycle<Oil>(PetrolEngine(), Tank());
  motor.refill(Pertamax());
  motor.accelerate();
  motor.kickStand();

  Car tesla = Car<Volt>(ElectricEngine(), Battery());
  tesla.refill(Volt(25));
  tesla.accelerate();
}
