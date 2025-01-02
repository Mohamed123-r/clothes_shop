import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/api/dio_consumer.dart';
import 'package:clothes_shop_app/core/api/end_point.dart';
import 'package:clothes_shop_app/core/database/cache/cache_helper.dart';
import 'package:clothes_shop_app/core/error/exceptions.dart';
import 'package:clothes_shop_app/features/authentication/domain/repos/auth_repo.dart';
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

  @override
  Future<Either<Failure, Map<String, dynamic>>> registerWithEmail({
    required String email,
    required String password,
    required String confirmPassword,
    required String name,
    required String phone,
    required String location,
    required int gender,
  }) async {
    try {
      var response = await dioConsumer.post(
        "${EndPoint.baseUrlAuth}register",
        body: {
          "email": email,
          "password": password,
          "confirmPassword": confirmPassword,
          "name": name,
          "phone": phone,
          "location": location,
          "gender": gender,
        },
      );

      CacheHelper.sharedPreferences.setStringList(sharedPrefUserUser,
          [email, name, phone, location, gender.toString()]);

      return Right(response);
    } on CustomException catch (e) {
      return Left(ServerFailure(e.toString()));
    } catch (e) {
      logger.e("Exception in  signUpWithEmail :$e");
      return Left(ServerFailure(e.toString()));
    }
  }
}
