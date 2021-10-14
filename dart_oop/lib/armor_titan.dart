import 'package:dart_oop/defend_ability.dart';
import 'package:dart_oop/human.dart';
import 'package:dart_oop/run_ability.dart';
import 'package:dart_oop/titan.dart';

class ArmorTitan extends Human
    with RunFastAbility, DefendStrongAbility
    implements Titan {
  @override
  void transformToTitan() {
    print('berubah menjadi armor titan');
    print('dapat ${super.fastRunning()} dan ${super.strongDefending()}');
    super.changeHealthPoint = 1000;
    super.changePowerPoint = 100;
  }
}
