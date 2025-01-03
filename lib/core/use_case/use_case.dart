import 'package:clothes_shop_app/core/error/exceptions.dart';
import 'package:dartz/dartz.dart';

import '../error/failures.dart';

abstract class UseCase<Type, Param> {
  Future<Either<Failure, Type>> call([Param param]);
}
