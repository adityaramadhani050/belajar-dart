class Monster {
  int power;

  Monster({required this.power});

  Monster operator +(Monster obj) {
    return Monster(power: power + obj.power);
  }

  @override
  bool operator ==(other) {
    if (other is Monster) {
      return (other.power == power) ? true : false;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => power.hashCode;

  bool operator >(Monster obj) {
    return (power > obj.power) ? true : false;
  }
}
