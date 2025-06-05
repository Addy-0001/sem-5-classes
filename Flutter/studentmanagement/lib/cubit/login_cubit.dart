import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studentmanagement/cubit/dashboard_cubit.dart';
import 'package:studentmanagement/view/dashboard_screen.dart';

class LoginCubit extends Cubit<void> {
  LoginCubit() : super(null);
  late final DashboardCubit _dashboardCubit;

  void loginUser(BuildContext context, String username, String password) {
    if (username == "admin" && password == "admin") {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder:
              (_) => BlocProvider.value(
                value: _dashboardCubit,
                child: DashboardScreen(),
              ),
        ),
      );
    }
  }
}
