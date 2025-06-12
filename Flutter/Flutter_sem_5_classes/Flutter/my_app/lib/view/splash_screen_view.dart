import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_app/cubit/splash_cubit.dart';
import 'package:my_app/service/service_locator.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';


class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
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