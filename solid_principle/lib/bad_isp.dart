// BAD

abstract class HeroAbilityInterface {
  void magicCaster();
  void heal();
  void stealMoney();
}

abstract class Hero implements HeroAbilityInterface {
  void regularAttack();
}

class Thief extends Hero {
  @override
  void heal() {
    // do nothing
  }

  @override
  void magicCaster() {
    // do nothing
  }

  @override
  void regularAttack() {
    // TODO: implement regularAttack
  }

  @override
  void stealMoney() {
    // TODO: implement stealMoney
  }
}

class WhiteMage extends Hero {
  @override
  void heal() {
    // TODO: implement heal
  }

  @override
  void magicCaster() {
    // TODO: implement magicCaster
  }

  @override
  void regularAttack() {
    // TODO: implement regularAttack
  }

  @override
  void stealMoney() {
    // do nothing
  }
}

class BlackMage extends Hero {
  @override
  void heal() {
    // do nothing
  }

  @override
  void magicCaster() {
    // TODO: implement magicCaster
  }

  @override
  void regularAttack() {
    // TODO: implement regularAttack
  }

  @override
  void stealMoney() {
    // do nothing
  }
}
