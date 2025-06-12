import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/cubit/palindrom_cubit.dart';

class PalindromeView extends StatelessWidget {
  PalindromeView({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Palindrome Checker")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter a number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final input = int.parse(_controller.text);
                context.read<PalindromeCubit>().checkPalindrome(input);
              },
              child: const Text("Check"),
            ),
            const SizedBox(height: 16),
            BlocBuilder<PalindromeCubit, bool>(
              builder: (context, state) {
                return Text(
                  '$state',
                  style: TextStyle(
                    fontSize: 24,
                    color: state ? Colors.green : Colors.red,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}