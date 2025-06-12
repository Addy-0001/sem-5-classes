import 'package:flutter/material.dart';
import 'package:flutter_project_class/view/first_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstView()
    );
  }
}