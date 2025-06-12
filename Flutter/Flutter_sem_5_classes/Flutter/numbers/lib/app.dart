import 'package:flutter/material.dart';
import 'package:numbers/view/game_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "second task",
      home: GameView(),
    );
  }
}