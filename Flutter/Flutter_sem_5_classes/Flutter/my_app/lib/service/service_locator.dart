import 'package:get_it/get_it.dart';
import 'package:my_app/cubit/dashboard_cubit.dart';
import 'package:my_app/cubit/palindrom_cubit.dart';
import 'package:my_app/cubit/simple_interest_cubit.dart';
import 'package:my_app/cubit/splash_cubit.dart';


final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  _initBloc();
}

void _initBloc() {
  serviceLocator.registerFactory<SimpleInterestCubit>(
    () => SimpleInterestCubit(),
  );
  serviceLocator.registerFactory<PalindromeCubit>(() => PalindromeCubit());
  serviceLocator.registerFactory<DashboardCubit>(
    () => DashboardCubit(SimpleInterestCubit(), PalindromeCubit()),
  );
  serviceLocator.registerLazySingleton<SplashCubit>(
    () => SplashCubit(DashboardCubit(serviceLocator(), serviceLocator())),
  );
}