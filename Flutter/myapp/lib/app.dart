import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/cubit/splash_cubit.dart';
import 'package:myapp/service_locator/service_locator.dart';
import 'package:myapp/view/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      home: BlocProvider.value(
        value: serviceLocator<SplashCubit>(),
        child: SplashScreen(),
      ),
    );
  }
}
