import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/cubit/dashboard_cubit.dart';
import 'package:my_app/view/dashboard_view.dart';


class SplashCubit extends Cubit<void> {
  SplashCubit(this._dashboardCubit) : super(null);

  final DashboardCubit _dashboardCubit;

  void onInitialize(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder:
            (_) => BlocProvider.value(
              value: _dashboardCubit,
              child: DashboardView(),
            ),
      ),
    );
  }
}