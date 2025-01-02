import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';

abstract class AuthRepo {
  Future<Either<Failure, Map<String, dynamic>>> loginWithEmail({
    required String email,
    required String password,
  });

  Future<Either<Failure, Map<String, dynamic>>> registerWithEmail({
    required String email,
    required String password,
    required String confirmPassword,
    required String name,
    required String phone,
    required String location,
    required int gender,
  });
}
