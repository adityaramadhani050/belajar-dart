import 'package:solid_principle/solid/interfaces/storage_interface.dart';
import 'package:solid_principle/solid/oil.dart';

class OilPipe {
  Oil? suckOilFrom(StorageInterface storage) {
    return storage.getSource();
  }
}
