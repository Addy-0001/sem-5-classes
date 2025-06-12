import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:student_management/core/network/api_service.dart';
import 'package:student_management/core/network/hive_service.dart';
import 'package:student_management/features/auth/presentation/view_model/login_view_model/login_view_model.dart';
import 'package:student_management/features/auth/presentation/view_model/register_view_model/register_view_model.dart';
import 'package:student_management/features/batch/data/data_source/local_datasource/batch_local_data_source.dart';
import 'package:student_management/features/batch/data/data_source/remote_datasource/batch_remote_data_source.dart';
import 'package:student_management/features/batch/data/repository/local_repository/batch_local_repository.dart';
import 'package:student_management/features/batch/data/repository/remote_repository/batch_remote_repository.dart';
import 'package:student_management/features/batch/domain/use_case/create_batch_usecase.dart';
import 'package:student_management/features/batch/domain/use_case/delete_batch_usecase.dart';
import 'package:student_management/features/batch/domain/use_case/get_all_batch_usecase.dart';
import 'package:student_management/features/batch/presentation/view_model/batch_view_model.dart';
import 'package:student_management/features/splash/presentation/view_model/splash_view_model.dart';

final serviceLocator = GetIt.instance;

Future initDependencies() async {
  await _initHiveService();
  await initApiModule();
  // Initialize all modules
  await _initBatchModule();
  await _initAuthModule();
  await _initHomeModule();
  await _initSplashModule();
}

Future _initHiveService() async {
  serviceLocator.registerLazySingleton(() => HiveService());
}

Future<void> initApiModule() async {
  // Dio instance
  serviceLocator.registerLazySingleton<Dio>(() => Dio());
  serviceLocator.registerLazySingleton(() => ApiService(serviceLocator<Dio>()));
}

Future _initBatchModule() async {
  // Register Data Source
  serviceLocator.registerLazySingleton(
    () => BatchLocalDataSource(serviceLocator()),
  );

  serviceLocator.registerFactory(
    () => BatchRemoteDataSource(apiService: serviceLocator<ApiService>()),
  );

  // Register Local Repository
  serviceLocator.registerLazySingleton<BatchLocalRepository>(
    () => BatchLocalRepository(serviceLocator()),
  );

  serviceLocator.registerLazySingleton<BatchRemoteRepository>(
    () => BatchRemoteRepository(batchRemoteDatasource: serviceLocator()),
  );

  // Register use cases
  serviceLocator.registerLazySingleton(
    () => GetAllBatchUsecase(
      batchRepository: serviceLocator<BatchRemoteRepository>(),
    ),
  );
  serviceLocator.registerLazySingleton(
    () => CreateBatchUsecase(
      batchRepository: serviceLocator<BatchRemoteRepository>(),
    ),
  );
  serviceLocator.registerLazySingleton(
    () => DeleteBatchUsecase(
      batchRepository: serviceLocator<BatchRemoteRepository>(),
    ),
  );
  // Register ViewModel
  serviceLocator.registerFactory(
    () => BatchViewModel(
      getAllBatchUsecase: serviceLocator(),
      createBatchUsecase: serviceLocator(),
      deleteBatchUsecase: serviceLocator(),
    ),
  );
}

Future _initHomeModule() async {
  // serviceLocator.registerLazySingleton(
  //   () => HomeViewModel(loginViewModel: serviceLocator<LoginViewModel>()),
  // );
}

Future _initAuthModule() async {
  serviceLocator.registerFactory(() => LoginViewModel());
  serviceLocator.registerFactory(() => RegisterViewModel());
}

Future _initSplashModule() async {
  serviceLocator.registerFactory(() => SplashViewModel());
}
