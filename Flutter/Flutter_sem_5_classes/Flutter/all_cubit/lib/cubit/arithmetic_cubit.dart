

import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticCubit extends Cubit<int>{
  ArithmeticCubit(): super(0);

  void add(int firstNo, int secondNo) => emit(firstNo + secondNo);
  void sub(int firstNo, int secondNo) => emit(firstNo - secondNo);
  void mul(int firstNo, int secondNo) => emit(firstNo * secondNo);
}