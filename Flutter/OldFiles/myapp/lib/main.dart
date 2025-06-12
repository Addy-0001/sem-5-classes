import 'package:flutter/material.dart';
import 'package:myapp/app.dart';
import 'package:myapp/service_locator/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  await initDependencies();
  runApp(const MyApp());
}
