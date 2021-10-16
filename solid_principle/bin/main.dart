import 'package:solid_principle/good_dip.dart';

void main(List<String> arguments) {
  Car dieselCar = Car(DieselEngine());
  Car petrolCar = Car(PetrolEngine());
  Car hybridCar = Car(HybridEngine());

  dieselCar.startEngine();
  petrolCar.startEngine();
  hybridCar.startEngine();
}
