
import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/api/dio_consumer.dart';
import 'package:clothes_shop_app/core/api/end_point.dart';
import 'package:clothes_shop_app/core/error/exceptions.dart';
import 'package:clothes_shop_app/features/authentication/domain/entities/user_entity.dart';
import 'package:clothes_shop_app/features/authentication/domain/repos/aoth_repo.dart';
import 'package:dartz/dartz.dart';

class AuthRepoImpl extends AuthRepo {
  AuthRepoImpl({
    required this.dioConsumer,
  });

  final DioConsumer dioConsumer;

  @override
  Future<Either<Failure, UserEntity>> loginWithEmail(
      {required String email, required String password}) async {
    try {
      var response = await dioConsumer.post(
        "${EndPoint.baseUrlAuth}login",
        body: {
          "email": email,
          "password": password,
        },
      );
      return Right(response);
    } catch (e) {
      logger.e("Exception in  signInWithEmail :$e");
      return Left(ServerFailure(e.toString()));
    }
  }
}
