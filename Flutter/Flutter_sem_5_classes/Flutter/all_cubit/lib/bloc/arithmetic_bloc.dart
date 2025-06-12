import 'package:all_cubit/bloc/arithmetic_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticBloc extends Bloc<ArithmeticEvent,int>{
  ArithmeticBloc() : super(0){
    on<IncrementEvent>((event, emit) {
      final result = event.first + event.second;
      emit(result);
    });

    on<DecrementEvent>((event, emit) {
      final result = event.first - event.second;
      emit(result);
    });

    on<MultiEvent>((event, emit) {
      final result = event.first * event.second;
      emit(result);
    });
  }
}