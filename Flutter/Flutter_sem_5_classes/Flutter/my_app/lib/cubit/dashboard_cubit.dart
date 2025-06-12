import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/cubit/palindrom_cubit.dart';
import 'package:my_app/cubit/simple_interest_cubit.dart';
import 'package:my_app/view/palindrome_view.dart';
import 'package:my_app/view/simple_interest_view.dart';


class DashboardCubit extends Cubit<void> {
  DashboardCubit(this._simpleInterestCubit, this._palindromeCubit)
    : super(null);

  final SimpleInterestCubit _simpleInterestCubit;
  final PalindromeCubit _palindromeCubit;

  void openSimpleInterestCubit(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (_) => BlocProvider.value(
              value: _simpleInterestCubit,
              child: SimpleInterestView(),
            ),
      ),
    );
  }

  void openPalindromeCubit(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (_) => BlocProvider.value(
              value: _palindromeCubit,
              child: PalindromeView(),
            ),
      ),
    );
  }
}