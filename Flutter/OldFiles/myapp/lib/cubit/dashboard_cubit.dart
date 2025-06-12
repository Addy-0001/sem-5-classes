import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/cubit/palindrome_cubit.dart';
import 'package:myapp/cubit/simple_interest_cubit.dart';
import 'package:myapp/view/palindrome_screen.dart';
import 'package:myapp/view/simple_interest_screen.dart';

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
              child: SimpleInterestScreen(),
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
              child: PalindromeScreen(),
            ),
      ),
    );
  }
}
