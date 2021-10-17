import 'package:solid_principle/solid/battery.dart';
import 'package:solid_principle/solid/battery_management_system.dart';
import 'package:solid_principle/solid/electric_motor.dart';
import 'package:solid_principle/solid/interfaces/storage_interface.dart';

class SpeedControler {
  BatteryManagementSystem bms;
  ElectricMotor motor;

  SpeedControler(this.bms, this.motor);

  void control(StorageInterface storage) {
    Volt? volt = bms.getVoltFrom(storage);
    if (volt != null) {
      motor.rotate(volt);
    }
  }
}
