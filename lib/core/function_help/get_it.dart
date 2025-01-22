import 'package:clothes_shop_app/core/api/dio_consumer.dart';
import 'package:clothes_shop_app/features/authentication/data/auth_repo_impl/auth_repo_impl.dart';
import 'package:clothes_shop_app/features/authentication/domain/repos/auth_repo.dart';
import 'package:clothes_shop_app/features/home/domain/repos/home_repo.dart';
import 'package:clothes_shop_app/features/profile/data/repos_impl/profile_repo_impl.dart';
import 'package:clothes_shop_app/features/profile/domain/repos/profile_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/repos_impl/home_repo_impl.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<DioConsumer>(
    DioConsumer(
      dio: Dio(),
    ),
  );
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      dioConsumer: getIt.get<DioConsumer>(),
    ),
  );
  getIt.registerSingleton<HomeRepo>(
    HomeRepoImpl(
      dioConsumer: getIt.get<DioConsumer>(),
    ),
  );
  getIt.registerSingleton<ProfileRepo>(
    ProfileRepoImpl(
      dioConsumer: getIt.get<DioConsumer>(),
    ),
  );
}
