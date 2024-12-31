import 'package:clothes_shop_app/core/error/exceptions.dart';
import 'package:clothes_shop_app/features/authentication/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> loginWithEmail({
    required String email,
    required String password,
  });
}
