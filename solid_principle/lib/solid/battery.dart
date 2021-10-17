import 'package:solid_principle/solid/interfaces/storage_interface.dart';

class Battery implements StorageInterface<Volt> {
  Volt? volt;

  @override
  void fill(source) {
    volt = source;
  }

  @override
  Volt? getSource() {
    return volt;
  }
}

class Volt {
  final int power;
  Volt(this.power);
}
