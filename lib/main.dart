import 'package:flutter/material.dart';
import 'package:task_manager_app/presentation/task_manager_app/task_manager_app.dart';
import 'package:task_manager_app/service_locator/service_locator.dart';
import 'package:task_manager_app/services/shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureInjection();
  await SharedPreferencesService.init();

  runApp(const TaskManagerApp());
}
