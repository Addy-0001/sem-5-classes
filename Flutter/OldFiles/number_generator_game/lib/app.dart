import 'package:flutter/material.dart';
import 'package:number_generator_game/view/app_view.dart';
import 'package:number_generator_game/view/calculator_view_screen.dart';
import 'package:number_generator_game/view/card_view.dart';
import 'package:number_generator_game/view/grid_view_screen.dart';
import 'package:number_generator_game/view/student_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/student',
      routes: {
        "/": (context) => const AppView(),
        "/student": (context) => const StudentView(),
        "/card": (context) => const CardView(),
        '/grid': (context) => const GridViewScreen(),
        '/calculator': (context) => const CalculatorViewScreen(),
      },
    );
  }
}
