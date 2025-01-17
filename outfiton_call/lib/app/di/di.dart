import 'package:get_it/get_it.dart';
import 'package:outfitoncall/core/network/hive_service.dart';
import 'package:outfitoncall/features/auth/data/data_source/local_data_source/auth_local_data_source.dart';
import 'package:outfitoncall/features/auth/data/repository/auth_local_repository.dart';
import 'package:outfitoncall/features/auth/domain/use_case/registration_usecase.dart';
import 'package:outfitoncall/features/auth/presentation/view_model/login/login_bloc.dart';
import 'package:outfitoncall/features/auth/presentation/view_model/signup/register_bloc.dart';
import 'package:outfitoncall/features/home/presentation/view_model/home_cubit.dart';

final getIt = GetIt.instance;

Future<void> initDependencies() async {
  // First initialize hive service
  await _initHiveService();

  await _initHomeDependencies();
  await _initRegisterDependencies();
  await _initLoginDependencies();
}

_initHiveService() {
  getIt.registerLazySingleton<HiveService>(() => HiveService());
}

_initRegisterDependencies() {
  // init local data source
  getIt.registerLazySingleton(
    () => AuthLocalDataSource(getIt<HiveService>()),
  );

  // init local repository
  getIt.registerLazySingleton(
    () => AuthLocalRepository(getIt<AuthLocalDataSource>()),
  );

  // register use usecase
  getIt.registerLazySingleton<RegisterUseCase>(
    () => RegisterUseCase(
      getIt<AuthLocalRepository>(),
    ),
  );

  getIt.registerFactory<RegisterBloc>(
    () => RegisterBloc(
      registerUseCase: getIt(),
    ),
  );
}

_initHomeDependencies() async {
  getIt.registerFactory<HomeCubit>(
    () => HomeCubit(),
  );
}

_initLoginDependencies() async {
  getIt.registerFactory<LoginBloc>(
    () => LoginBloc(
      registerBloc: getIt<RegisterBloc>(),
      homeCubit: getIt<HomeCubit>(),
    ),
  );
}
