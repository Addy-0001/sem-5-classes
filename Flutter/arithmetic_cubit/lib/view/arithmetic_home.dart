import 'package:flutter/material.dart';

class ArithmeticHome extends StatelessWidget {
  ArithmeticHome({super.key});

  final firstNumberController = TextEditingController();
  final secondNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Arithmetic Cubit App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              inputFormatters: [],
            )
          ],
        ),
      ),
    );
  }
}
