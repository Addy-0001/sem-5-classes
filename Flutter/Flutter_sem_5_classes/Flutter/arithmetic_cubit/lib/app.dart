import 'package:arithmetic_cubit/cubit/arithmetic_cubit.dart';
import 'package:arithmetic_cubit/view/arithmetic_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arithmetic Cubit',
      home: BlocProvider(
        create: (context) => ArithmeticCubit(),
        child: ArithmeticCubitView(),
      ),
    );
  }
}