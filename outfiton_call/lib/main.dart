import 'package:flutter/material.dart';
import 'package:outfitoncall/app/app.dart';
import 'package:outfitoncall/app/di/di.dart';
import 'package:outfitoncall/core/network/hive_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Hive Database
  await HiveService.init();

  // Initialize Dependencies

  // await HiveService().clearStudentBox();

  await initDependencies();

  runApp(
    App(),
  );
}
