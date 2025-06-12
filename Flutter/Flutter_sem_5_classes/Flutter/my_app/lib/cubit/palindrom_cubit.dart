import 'package:flutter_bloc/flutter_bloc.dart';

class PalindromeCubit extends Cubit<bool> {
  PalindromeCubit() : super(false);

  void checkPalindrome(int num) {
    String strNum = num.toString();
    String newNum = "";

    for (int i = strNum.length - 1; i >= 0; i--) {
      newNum += strNum[i];
    }

    // print(newNum == strNum);

    emit(newNum == strNum);
  }
}