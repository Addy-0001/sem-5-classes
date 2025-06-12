import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/cubit/splash_cubit.dart';
import 'package:myapp/service_locator/service_locator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final SplashCubit splashCubit;

  @override
  void initState() {
    super.initState();

    splashCubit = serviceLocator<SplashCubit>();

    Timer(const Duration(seconds: 3), () {
      splashCubit.onInitialize(context); // Use cubit to navigate to dashboard
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "My App",
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
