import 'package:flutter/material.dart';
import 'package:number_generator_game/view/app_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {"/": (context) => const AppView()},
    );
  }
}
