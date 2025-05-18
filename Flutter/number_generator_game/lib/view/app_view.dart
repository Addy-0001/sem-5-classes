import 'dart:math';

import 'package:flutter/material.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  int? first, second;
  int correct = 0;
  int incorrect = 0;
  int count = 0;

  void generateNumber() {
    first =
        (1 + 100 * (DateTime.now().millisecondsSinceEpoch % 100) / 100).toInt();
    second =
        (1 + 100 * (DateTime.now().millisecondsSinceEpoch % 100) / 100).toInt();

    if (first == second) generateNumber();

    setState(() {});
  }

  void validate(value) {
    count++;
    while (count < 11) {
      generateNumber();
    }
  }

  @override
  void initState() {
    super.initState();
    generateNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Number Generator Game"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () => validate(first),
                child: Text("$first"),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () => validate(second),
                child: Text("$second"),
              ),
            ],
          ),
          Text("data"),
        ],
      ),
    );
  }
}
