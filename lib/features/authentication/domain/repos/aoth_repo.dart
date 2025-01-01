import 'package:clothes_shop_app/core/error/exceptions.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';

abstract class AuthRepo {
  Future<Either<Failure, Map<String, dynamic>>> loginWithEmail({
    required String email,
    required String password,
  });
}
