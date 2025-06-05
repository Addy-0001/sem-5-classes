import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpreferences/cubit/arithmetic_screen_cubit.dart';
import 'package:sharedpreferences/shared_pref/shared_pref.dart';

final serviceLocator = GetIt.instance;

Future<void> initModule() async {
  serviceLocator.registerLazySingleton<ArithmeticScreenCubit>(
    () => ArithmeticScreenCubit(),
  );

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerLazySingleton<SharedPreferences>(
    () => sharedPreferences,
  );

  serviceLocator.registerLazySingleton<SharedPref>(
    () => SharedPref(sharedPreferences: sharedPreferences)
  );
}
