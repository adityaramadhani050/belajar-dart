import 'package:solid_principle/solid/battery.dart';
import 'package:solid_principle/solid/interfaces/storage_interface.dart';

class BatteryManagementSystem {
  Volt? getVoltFrom(StorageInterface storage) {
    return storage.getSource();
  }
}
