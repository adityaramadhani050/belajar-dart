import 'package:solid_principle/solid/battery.dart';
import 'package:solid_principle/solid/battery_management_system.dart';
import 'package:solid_principle/solid/electric_motor.dart';
import 'package:solid_principle/solid/interfaces/engine_interface.dart';
import 'package:solid_principle/solid/interfaces/storage_interface.dart';
import 'package:solid_principle/solid/speed_control.dart';

class ElectricEngine implements EngineInterface {
  SpeedControler sc = SpeedControler(
    BatteryManagementSystem(),
    ElectricMotor(),
  );

  @override
  void move(StorageInterface storage) {
    sc.control(storage);
  }

  @override
  void stop() {
    // TODO: implement stop
  }
}
