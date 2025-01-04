import 'package:clothes_shop_app/core/error/exceptions.dart';
import 'package:clothes_shop_app/core/error/failures.dart';
import 'package:clothes_shop_app/features/home/data/models/Product_model.dart';
import 'package:clothes_shop_app/features/home/domain/entities/category_entity.dart';
import 'package:clothes_shop_app/features/home/domain/entities/over_entity.dart';
import 'package:clothes_shop_app/features/home/domain/entities/product_entity.dart';
import 'package:dartz/dartz.dart';
import '../../../../constants.dart';
import '../../../../core/api/dio_consumer.dart';
import '../../../../core/api/end_point.dart';
import '../../domain/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final DioConsumer dioConsumer;

  HomeRepoImpl({required this.dioConsumer});
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
  Future<Either<Failure, List<ProductEntity>>> fetchGetAllProducts() async {
    try {
     var response =
          await dioConsumer.get("${EndPoint.baseUrl}Product/GetAllProducts") as List< dynamic>;
     ;
      List<ProductEntity> products;
      products = response
          .map(
            (e) => ProductModel.fromJson(e).toEntity(),
          )
          .toList();
      return Right(products);
    } on CustomException catch (e) {
      return Left(ServerFailure(e.toString()));
    } catch (e) {
      logger.e("Exception in  signInWithEmail :$e");
      return Left(ServerFailure(e.toString()));
    }
  }
}
