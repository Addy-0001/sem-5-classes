
import 'package:all_cubit/cubit/arithmetic_cubit.dart';
import 'package:all_cubit/cubit/counter_cubit.dart';
import 'package:all_cubit/cubit/dashboard_cubit.dart';
import 'package:all_cubit/cubit/student_cubit.dart';
import 'package:all_cubit/service_locator/service_locator.dart';
import 'package:all_cubit/view/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MultiBlocProvider(
    //   providers: [
    //     BlocProvider(create: (context) => CounterCubit()),
    //     BlocProvider(create: (context) => ArithmeticCubit()),
    //     BlocProvider(create: (context) => StudentCubit()),
    //     BlocProvider(
    //       create: (context) => DashboardCubit(
    //         context.read<CounterCubit>(),
    //         context.read<ArithmeticCubit>(),
    //         context.read<StudentCubit>(),
    //       ),
    //     ),
    //   ],
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     title: 'Flutter BLoC',
    //     home: DashboardView(),
    //   ),
    // );

    return MaterialApp(
      title: 'Flutter BLoc',
      debugShowCheckedModeBanner: false,
      home: BlocProvider.value(
        value: serviceLocator<DashboardCubit>(),
        child: DashboardView(),
      ),
    );
  }
}