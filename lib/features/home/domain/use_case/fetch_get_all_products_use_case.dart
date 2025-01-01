import 'package:clothes_shop_app/core/error/exceptions.dart';
import 'package:clothes_shop_app/core/use_case/use_case.dart';
import 'package:clothes_shop_app/features/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/product_entity.dart';

class FetchGetAllProductsUseCase extends UseCase<List<ProductEntity>, void> {
  final HomeRepo homeRepo;

  FetchGetAllProductsUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<ProductEntity>>> call([void param]) {
    return homeRepo.fetchGetAllProducts();
  }
}
