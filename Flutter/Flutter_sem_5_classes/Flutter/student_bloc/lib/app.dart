import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_bloc/cubit/student_cubit.dart';
import 'package:student_bloc/view/student_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student bloc',
      home: BlocProvider(
        create: (context) => StudentCubit(),
        child: StudentView(),
      )
    );
  }
}