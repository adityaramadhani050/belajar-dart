// ABSTRACTION
abstract class EngineInterface {
  void start();
}

// HIGH LEVEL
class Car {
  final EngineInterface _engine;

  Car(this._engine);

  void startEngine() {
    _engine.start();
  }
}

// LOW LEVEL
class DieselEngine implements EngineInterface {
  @override
  void start() {
    print('menyalakan mobil dengan mesin diesel');
  }
}

class PetrolEngine implements EngineInterface {
  @override
  void start() {
    print('menyalakan mobil dengan mesin petrol');
  }
}

class HybridEngine implements EngineInterface {
  @override
  void start() {
    print('menyalakan mobil dengan mesin hybrid');
  }
}
