import 'package:all_cubit/app.dart';
import 'package:all_cubit/service_locator/service_locator.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await initDependencies();
  
  runApp(
    const MyApp()
  );
}
