// object creation all done here:

import 'package:all_cubit/bloc/arithmetic_bloc.dart';
import 'package:all_cubit/cubit/arithmetic_cubit.dart';
import 'package:all_cubit/cubit/counter_cubit.dart';
import 'package:all_cubit/cubit/dashboard_cubit.dart';
import 'package:all_cubit/cubit/student_cubit.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void>  initDependencies() async{
  _initBloc();
  _initCubit();
}

void _initBloc(){
  serviceLocator.registerLazySingleton(() => ArithmeticBloc());
}

void _initCubit() {
  serviceLocator.registerFactory<CounterCubit>(()=>CounterCubit());
  serviceLocator.registerFactory<ArithmeticCubit>(()=>ArithmeticCubit());
  serviceLocator.registerFactory<StudentCubit>(()=>StudentCubit());
  // serviceLocator.registerLazySingleton<DashboardCubit>(
  //   () => DashboardCubit(
  //     serviceLocator(),
  //     serviceLocator(),
  //     serviceLocator(),
  //     serviceLocator(),
  //   ),
  // );

  serviceLocator.registerLazySingleton<DashboardCubit>(
    () => DashboardCubit(
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
    )
  );
}