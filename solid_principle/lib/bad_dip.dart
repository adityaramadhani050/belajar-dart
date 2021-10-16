class Car {
  final Engine _engine;
  Car(this._engine);

  void start() {
    _engine.start();
  }
}

class Engine {
  void start() {

  }
}

class DieselEngine {
  void start() {

  }
}

void main() {
  Car car = Car(Engine());
  car.start();
  // kode diatas akan berjalan dengan baik
  // karena class atau objekyang dimasukkan sebagai parameter sesuai

  Car carDiesel = Car(DieselEngine());
  carDiesel.start()
  // kode diatas akan mengalami error
  // karena class atau objeck yang dimasukkan sebagai parameter tidak sesuai
}