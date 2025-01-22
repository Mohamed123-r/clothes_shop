import 'package:clothes_shop_app/core/error/failures.dart';
import 'package:clothes_shop_app/features/profile/domain/entities/profile_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ProfileRepo {
  Future<Either<Failure, ProfileEntity>> getProfileDataDetails();
}
