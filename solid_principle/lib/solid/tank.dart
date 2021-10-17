import 'package:solid_principle/solid/oil.dart';
import 'package:solid_principle/solid/interfaces/storage_interface.dart';

class Tank implements StorageInterface<Oil> {
  Oil? _oil;

  @override
  void fill(Oil source) {
    _oil = source;
  }

  @override
  Oil? getSource() {
    return _oil;
  }
}
