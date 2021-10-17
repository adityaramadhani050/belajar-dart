import 'package:solid_principle/solid/energy.dart';

abstract class Oil {
  Energy burn();
}

class Pertamax implements Oil {
  @override
  Energy burn() {
    return Energy(92);
  }
}

class Pertalite implements Oil {
  @override
  Energy burn() {
    return Energy(90);
  }
}

class PertamaxTurbo implements Oil {
  @override
  Energy burn() {
    return Energy(94);
  }
}
