import 'package:flutter/cupertino.dart';
import 'package:student_management/app/app.dart';
import 'package:student_management/app/service_locator/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initDependencies();
  runApp(App());
}
