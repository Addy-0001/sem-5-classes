import 'package:flutter/material.dart';
import 'package:my_app/app.dart';
import 'package:my_app/service/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  await initDependencies();
  runApp(const MyApp());
}