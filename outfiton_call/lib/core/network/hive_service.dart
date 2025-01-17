import 'package:hive_flutter/hive_flutter.dart';
import 'package:outfitoncall/app/constants/hive_table_constants.dart';
import 'package:outfitoncall/features/auth/data/model/auth_hive_model.dart';
import 'package:path_provider/path_provider.dart';

class HiveService {
  static Future<void> init() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = '${directory.path}/outfitoncall.db';

    Hive.init(path);

    Hive.registerAdapter(AuthHiveModelAdapter());
  }

  Future<List<AuthHiveModel>> getAllUsers() async {
    var box = await Hive.openBox<AuthHiveModel>(HiveTableConstant.userBox);
    return box.values.toList();
  }

  Future<AuthHiveModel?> login(String email, String password) async {
    var box = await Hive.openBox<AuthHiveModel>(HiveTableConstant.userBox);
    var user = box.values.firstWhere(
        (element) => element.email == email && element.password == password,
        orElse: () => AuthHiveModel.initial());
    return user;
  }

  Future<void> clearAll() async {
    await Hive.deleteBoxFromDisk(HiveTableConstant.productboxBox);
    await Hive.deleteBoxFromDisk(HiveTableConstant.cartBox);
    await Hive.deleteBoxFromDisk(HiveTableConstant.userBox);
    await Hive.deleteBoxFromDisk(HiveTableConstant.rentBox);
  }

  Future<void> clearUserBox() async {
    await Hive.deleteBoxFromDisk(HiveTableConstant.userBox);
  }

  Future<void> close() async {
    await Hive.close();
  }

  register(AuthHiveModel authHiveModel) {}
}

class CartHiveModelAdapter {}

class ProductHiveModelAdapter {}
