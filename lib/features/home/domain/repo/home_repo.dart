import 'package:clothes_shop_app/core/error/exceptions.dart';
import 'package:clothes_shop_app/features/home/domain/entities/product_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ProductEntity>>> fetchGetAllProducts();
}
