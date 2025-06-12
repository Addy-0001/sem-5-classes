import 'package:flutter/material.dart';

class CalculatorViewScreen extends StatefulWidget {
  const CalculatorViewScreen({super.key});

  @override
  State<CalculatorViewScreen> createState() => _CalculatorViewScreenState();
}

class _CalculatorViewScreenState extends State<CalculatorViewScreen> {
  final lst = [
    "C",
    "*",
    "/",
    "<-",
    "1",
    "2",
    "3",
    "+",
    "4",
    "5",
    "6",
    "-",
    "7",
    "8",
    "9",
    "*",
    "%",
    "0",
    ".",
    "=",
  ];

  final TextEditingController _controller = TextEditingController();

  String input = '';
  String operator = '';
  double firstNumber = 0;
  double secondNumber = 0;

  // Called when any button is pressed
  void onButtonPressed(String value) {
    setState(() {
      if (value == "C") {
        // Clear everything
        input = '';
        operator = '';
        firstNumber = 0;
        secondNumber = 0;
        _controller.text = '';
      } else if (value == "<-") {
        // Backspace: remove last character
        if (input.isNotEmpty) {
          input = input.substring(0, input.length - 1);
          _controller.text = input;
        }
      } else if (value == "+" ||
          value == "-" ||
          value == "*" ||
          value == "/" ||
          value == "%") {
        // Store first number and operator
        if (input.isNotEmpty) {
          firstNumber = double.parse(input);
          operator = value;
          input = '';
        }
      } else if (value == "=") {
        // When "=" is pressed, perform calculation
        if (input.isNotEmpty && operator.isNotEmpty) {
          secondNumber = double.parse(input);
          double result = 0;

          if (operator == "+") {
            result = firstNumber + secondNumber;
          } else if (operator == "-") {
            result = firstNumber - secondNumber;
          } else if (operator == "*") {
            result = firstNumber * secondNumber;
          } else if (operator == "/") {
            result = secondNumber != 0 ? firstNumber / secondNumber : 0;
          } else if (operator == "%") {
            result = firstNumber / 100 * secondNumber;
          }

          // Show result and reset for next calculation
          _controller.text = result.toString();
          input = result.toString();
          operator = '';
          firstNumber = 0;
          secondNumber = 0;
        }
      } else {
        // If it's a number or dot, just add to input
        input = input + value;
        _controller.text = input;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Calculator App',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                style: TextStyle(fontSize: 50),
                textAlign: TextAlign.right,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  childAspectRatio: 4 / 5,
                  crossAxisCount: 4,
                  padding: const EdgeInsets.all(8),
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  children: [
                    for (int i = 0; i < lst.length; i++)
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          onButtonPressed(lst[i]);
                        },
                        child: Text(
                          lst[i],
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
