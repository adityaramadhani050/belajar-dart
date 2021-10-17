import 'package:solid_principle/solid/energy.dart';
import 'package:solid_principle/solid/interfaces/engine_interface.dart';
import 'package:solid_principle/solid/interfaces/storage_interface.dart';
import 'package:solid_principle/solid/oil.dart';
import 'package:solid_principle/solid/oil_pipe.dart';
import 'package:solid_principle/solid/piston.dart';

class PetrolEngine implements EngineInterface {
  final OilPipe _oilPipe = OilPipe();
  final Piston _piston = Piston();

  @override
  void move(StorageInterface storage) {
    Oil? oil = _oilPipe.suckOilFrom(storage);
    if (oil != null) {
      Energy energy = oil.burn();
      energy.push(_piston);
    } else {
      print('bahan bakar habis');
    }
  }

  @override
  void stop() {}
}
