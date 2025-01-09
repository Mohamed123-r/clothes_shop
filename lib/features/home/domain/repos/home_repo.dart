import 'package:clothes_shop_app/features/home/domain/entities/product_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/category_details_entity.dart';
import '../entities/category_entity.dart';
import '../entities/offer_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ProductEntity>>> fetchGetAllProducts();

  Future<Either<Failure, List<OfferEntity>>> fetchGetAllOver();

  Future<Either<Failure, List<CategoryEntity>>> fetchGetAllCategories();

  Future<Either<Failure, List<CategoryDetailsEntity>>> fetchGetCategoryDetails(int id);
}
