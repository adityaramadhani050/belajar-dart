import 'package:solid_principle/solid/interfaces/engine_interface.dart';
import 'package:solid_principle/solid/interfaces/storage_interface.dart';
import 'package:solid_principle/solid/interfaces/vehicle.dart';

class Motorcycle<T> extends Vehicle<T> {
  final EngineInterface _engine;
  final StorageInterface _storage;

  Motorcycle(this._engine, this._storage);

  void kickStand() {
    print('parkir motor');
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
