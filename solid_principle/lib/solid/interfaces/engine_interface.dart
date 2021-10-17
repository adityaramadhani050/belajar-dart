import 'package:solid_principle/solid/interfaces/storage_interface.dart';

abstract class EngineInterface {
  void move(StorageInterface storage);
  void stop();
}
