import 'package:hive_flutter/hive_flutter.dart';

import '../menu/models/pet.dart';

class HiveManager {
  static final instance = HiveManager._internal();
  late Box<Pet> petBox;

  factory HiveManager() {
    return instance;
  }
  HiveManager._internal();

  Future<void> initHiveManager() async {

    Hive.registerAdapter(PetAdapter());

    petBox = await Hive.openBox('pets');
  }
}