// ABSTRACTION
abstract class Engine {
  void start();
}

// HIGH LEVEL
class Car {
  final Engine _engine;

  Car(this._engine);

  void startEngine() {
    _engine.start();
  }
}

// LOW LEVEL
class DieselEngine implements Engine {
  @override
  void start() {
    print('menyalakan mobil dengan mesin diesel');
  }
}

class PetrolEngine implements Engine {
  @override
  void start() {
    print('menyalakan mobil dengan mesin petrol');
  }
}

class HybridEngine implements Engine {
  @override
  void start() {
    print('menyalakan mobil dengan mesin hybrid');
  }
}
