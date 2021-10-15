abstract class Hero {
  void regularAttack();
}

abstract class MagicAbilityInterface {
  void magicCaster();
}

abstract class AssasinAbilityInterface {
  void stealMoney();
}

abstract class HealerAbilityInterface {
  void heal();
}

class Thief extends Hero implements AssasinAbilityInterface {
  @override
  void regularAttack() {
    // TODO: implement regularAttack
  }

  @override
  void stealMoney() {
    // TODO: implement stealMoney
  }
}

class WhiteMage extends Hero
    implements MagicAbilityInterface, HealerAbilityInterface {
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
}

class BlackMage extends Hero implements MagicAbilityInterface {
  @override
  void magicCaster() {
    // TODO: implement magicCaster
  }

  @override
  void regularAttack() {
    // TODO: implement regularAttack
  }
}

class Shaman extends Hero
    implements MagicAbilityInterface, AssasinAbilityInterface {
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
    // TODO: implement stealMoney
  }
}
