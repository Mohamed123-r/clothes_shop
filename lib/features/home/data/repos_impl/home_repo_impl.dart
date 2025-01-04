
import 'package:clothes_shop_app/core/error/failures.dart';

import 'package:clothes_shop_app/features/home/domain/entities/category_entity.dart';

import 'package:clothes_shop_app/features/home/domain/entities/over_entity.dart';

import 'package:clothes_shop_app/features/home/domain/entities/product_entity.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failure, List<CategoryEntity>>> fetchGetAllCategories() {
    // TODO: implement fetchGetAllCategories
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<OverEntity>>> fetchGetAllOver() {
    // TODO: implement fetchGetAllOver
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> fetchGetAllProducts() {
    // TODO: implement fetchGetAllProducts
    throw UnimplementedError();
  }
}