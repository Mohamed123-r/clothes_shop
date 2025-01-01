import 'package:clothes_shop_app/core/api/dio_consumer.dart';
import 'package:clothes_shop_app/features/authentication/data/auth_repo_impl/auth_repo_impl.dart';
import 'package:clothes_shop_app/features/authentication/domain/repos/aoth_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      dioConsumer: DioConsumer(
        dio: Dio(),
      ),
    ),
  );
}
