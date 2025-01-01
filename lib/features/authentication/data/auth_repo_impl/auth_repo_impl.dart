import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/api/dio_consumer.dart';
import 'package:clothes_shop_app/core/api/end_point.dart';
import 'package:clothes_shop_app/core/database/cache/cache_helper.dart';
import 'package:clothes_shop_app/core/error/exceptions.dart';
import 'package:clothes_shop_app/features/authentication/data/models/user_model.dart';
import 'package:clothes_shop_app/features/authentication/domain/repos/aoth_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';

class AuthRepoImpl extends AuthRepo {
  AuthRepoImpl({
    required this.dioConsumer,
  });

  final DioConsumer dioConsumer;

  @override
  Future<Either<Failure, Map<String, dynamic>>> loginWithEmail(
      {required String email, required String password}) async {
    try {
      var response = await dioConsumer.post(
        "${EndPoint.baseUrlAuth}login",
        body: {
          "email": email,
          "password": password,
        },
      );
      CacheHelper.sharedPreferences
          .setString(sharedPrefUserToken, response["token"]);
      CacheHelper.sharedPreferences
          .setString(sharedPrefUserEmail, response["email"]);

      return Right(response);
    } on CustomException catch (e) {
      return Left(ServerFailure(e.toString()));
    } catch (e) {
      logger.e("Exception in  signInWithEmail :$e");
      return Left(ServerFailure(e.toString()));
    }
  }
}
