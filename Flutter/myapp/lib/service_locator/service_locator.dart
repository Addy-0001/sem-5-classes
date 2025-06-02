import 'package:get_it/get_it.dart';
import 'package:myapp/cubit/dashboard_cubit.dart';
import 'package:myapp/cubit/palindrome_cubit.dart';
import 'package:myapp/cubit/simple_interest_cubit.dart';
import 'package:myapp/cubit/splash_cubit.dart';

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
