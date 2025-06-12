import 'package:flutter/material.dart';
import 'dart:math';

class GameView extends StatefulWidget {
  const GameView({super.key});

  @override
  State<GameView> createState() => GameViewState();
}

class GameViewState extends State<GameView> {
  int firstNumber = 0;
  int secondNumber = 0;
  int totalClicks = 0;
  final int maxTries = 10;
  List<bool> resultList = [];
  final Random random = Random();
  String resultMessage = '';

  @override
  void initState() {
    super.initState();
    generateRandomNumbers();
  }

  void generateRandomNumbers() {
    setState(() {
      do {
        firstNumber = random.nextInt(100) + 1;
        secondNumber = random.nextInt(100) + 1;
      } while (firstNumber == secondNumber);
    });
  }
 
  void handleSelection(bool isFirstSelected) {
    if (totalClicks >= maxTries) return;

    bool isCorrect = (isFirstSelected && firstNumber > secondNumber) ||
        (!isFirstSelected && secondNumber > firstNumber);

    resultList.add(isCorrect);

    if (totalClicks >= maxTries) {
      int correctCount = resultList.where((e) => e).length;
      resultMessage =
          correctCount >= 5 ? "You are the Winner!" : "Try Again!";
    } else {
      generateRandomNumbers();
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    bool buttonsEnabled = totalClicks < maxTries;

    return Scaffold(
      appBar: AppBar(title: const Text('Number Comparison Game')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Attempt: $totalClicks / $maxTries",
                  style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed:
                        buttonsEnabled ? () => handleSelection(true) : null,
                    child: Text(firstNumber.toString(),
                        style: const TextStyle(fontSize: 24)),
                  ),
                  const SizedBox(width: 40),
                  ElevatedButton(
                    onPressed:
                        buttonsEnabled ? () => handleSelection(false) : null,
                    child: Text(secondNumber.toString(),
                        style: const TextStyle(fontSize: 24)),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              if (totalClicks == maxTries) ...[
                const Text("Result List:",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text(resultList.toString()),
                const SizedBox(height: 10),
                Text(resultMessage,
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: resultMessage.contains("Winner")
                            ? Colors.green
                            : Colors.red)),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
