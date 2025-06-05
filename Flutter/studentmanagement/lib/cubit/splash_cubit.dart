import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studentmanagement/cubit/login_cubit.dart';
import 'package:studentmanagement/view/login_screen.dart';

class SplashCubit extends Cubit<void> {
  SplashCubit(this._loginCubit) : super(null);
  final LoginCubit _loginCubit;

  void onInitialize(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder:
            (_) => BlocProvider.value(value: _loginCubit, child: LoginScreen()),
      ),
    );
  }
}
