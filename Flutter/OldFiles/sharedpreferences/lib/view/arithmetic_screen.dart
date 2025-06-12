import 'package:flutter/material.dart';
import 'package:sharedpreferences/cubit/arithmetic_screen_cubit.dart';

class ArithmeticScreen extends StatelessWidget {
  ArithmeticScreen({super.key});
  final TextEditingController _firstNumber = TextEditingController();
  final TextEditingController _secondNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: _firstNumber,
            decoration: InputDecoration(contentPadding: EdgeInsets.all(5)),
          ),
          TextFormField(
            controller: _secondNumber,
            decoration: InputDecoration(contentPadding: EdgeInsets.all(5)),
          ),

          ElevatedButton(
            onPressed: () {
              int firstNum = int.parse(_firstNumber.text);
              int secondNum = int.parse(_secondNumber.text);
            },
            child: Text("Add"),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Subtract")),
        ],
      ),
    );
  }
}
