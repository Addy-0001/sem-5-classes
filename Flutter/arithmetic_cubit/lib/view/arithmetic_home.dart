import 'package:arithmetic_cubit/cubit/arithmetic_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticHome extends StatelessWidget {
  ArithmeticHome({super.key});

  final firstNumberController = TextEditingController();
  final secondNumberController = TextEditingController();

  final Key myKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Arithmetic Cubit App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Form(
                key: myKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: firstNumberController,
                        validator: (value) {
                          if (value!.isEmpty) return "Can't be empty";
                          return null;
                        },
                        decoration: InputDecoration(
                          label: Text("First Number"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: secondNumberController,
                        validator: (value) {
                          if (value!.isEmpty) return "Can't be empty";
                          return null;
                        },
                        decoration: InputDecoration(
                          label: Text("Second Number"),
                        ),
                      ),
                    ),

                    ElevatedButton(
                      style: ButtonStyle(),
                      onPressed: () {
                        context.read<ArithmeticCubit>().add(
                          int.parse(firstNumberController.text),
                          int.parse(secondNumberController.text),
                        );
                      },
                      child: Text("Add"),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(),
                      onPressed: () {
                        context.read<ArithmeticCubit>().subtract(
                          int.parse(firstNumberController.text),
                          int.parse(secondNumberController.text),
                        );
                      },
                      child: Text("Subtract"),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(),
                      onPressed: () {
                        context.read<ArithmeticCubit>().multiply(
                          int.parse(firstNumberController.text),
                          int.parse(secondNumberController.text),
                        );
                      },
                      child: Text("Multiply"),
                    ),

                    Text(
                      "Output",
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    BlocBuilder<ArithmeticCubit, int>(
                      builder: (context, state) {
                        return Text("$state");
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
