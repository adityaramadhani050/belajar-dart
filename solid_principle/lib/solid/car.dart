import 'package:solid_principle/solid/interfaces/engine_interface.dart';
import 'package:solid_principle/solid/interfaces/storage_interface.dart';
import 'package:solid_principle/solid/interfaces/vehicle.dart';

class Car<T> extends Vehicle<T> {
  final EngineInterface _engine;
  final StorageInterface _storage;

  Car(this._engine, this._storage);

  void wiper() {
    // clean window
    print('membersihkan jendela mobil');
  }

  @override
  void accelerate() {
    _engine.move(_storage);
  }

  @override
  void brake() {
    _engine.stop();
  }

  @override
  void refill(T source) {
    _storage.fill(source);
  }
}
