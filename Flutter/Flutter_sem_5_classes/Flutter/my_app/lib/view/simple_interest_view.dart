import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/cubit/simple_interest_cubit.dart';

class SimpleInterestView extends StatefulWidget {
  const SimpleInterestView({super.key});

  @override
  State<SimpleInterestView> createState() => _SimpleInterestViewState();
}

class _SimpleInterestViewState extends State<SimpleInterestView> {
  final TextEditingController _principalController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  final TextEditingController _rateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simple Interest Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildInputField("Principal (P)", _principalController),
            const SizedBox(height: 12),
            _buildInputField("Time (T in years)", _timeController),
            const SizedBox(height: 12),
            _buildInputField("Rate (R %)", _rateController),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final p = double.tryParse(_principalController.text.trim());
                final t = double.tryParse(_timeController.text.trim());
                final r = double.tryParse(_rateController.text.trim());

                if (p != null && t != null && r != null) {
                  context.read<SimpleInterestCubit>().calculateSimpleInterest(
                    p,
                    t,
                    r,
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Please enter valid numbers."),
                    ),
                  );
                }
              },
              child: const Text("Calculate"),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                BlocBuilder<SimpleInterestCubit, double>(
                  builder: (context, state) {
                    return Text(
                      "Simple Interest: $state",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(String label, TextEditingController controller) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
    );
  }
}