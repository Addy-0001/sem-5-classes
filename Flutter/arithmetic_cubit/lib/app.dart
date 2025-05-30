import 'package:arithmetic_cubit/view/arithmetic_home.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Arithmetic Cubit App",
      debugShowCheckedModeBanner: false,
      home: ArithmeticHome(),
    );
  }
}
