import 'package:clothes_shop_app/core/error/exceptions.dart';
import 'package:clothes_shop_app/features/home/domain/entities/product_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/category_entity.dart';
import '../entities/over_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ProductEntity>>> fetchGetAllProducts();

  Future<Either<Failure, List<OverEntity>>> fetchGetAllOver();

  Future<Either<Failure, List<CategoryEntity>>> fetchGetAllCategories();
}
