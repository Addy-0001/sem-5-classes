import 'package:flutter/material.dart';
import 'package:studentmanagement/app.dart';
import 'package:studentmanagement/service_locator/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  await initDependencies();
  runApp(const MyApp());
}
