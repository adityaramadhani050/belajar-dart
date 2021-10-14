abstract class Human {
  int _healthPoint = 100;
  int _powerAttack = 10;

  bool _isAlive = true;

  int get health => (_isAlive) ? _healthPoint : 0;
  set changeHealthPoint(int val) {
    _healthPoint = val;
    if (_healthPoint < 5) {
      _isAlive = false;
      _healthPoint = 0;
    }
  }

  int get power => (_isAlive) ? _powerAttack : 0;
  set changePowerPoint(int val) {
    if (_isAlive) {
      _powerAttack = val;
    } else {
      _powerAttack = 0;
    }
  }

  String move() {
    return 'walking';
  }

  String attack() {
    return 'hit by hand';
  }
}
