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
import '../models/over_model.dart';

class HomeRepoImpl implements HomeRepo {
  final DioConsumer dioConsumer;

  HomeRepoImpl({required this.dioConsumer});

  @override
  Future<Either<Failure, List<CategoryEntity>>> fetchGetAllCategories() {
    // TODO: implement fetchGetAllCategories
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<OfferEntity>>> fetchGetAllOver() async {
    try {
      var response = await dioConsumer.get("${EndPoint.baseUrl}Offers/GetAll")
          as List<dynamic>;

      List<OfferEntity> offers;
      offers = response
          .map(
            (e) => OfferModel.fromJson(e).toEntity(),
          )
          .toList();
      return Right(offers);
    } on CustomException catch (e) {
      return Left(ServerFailure(e.toString()));
    } catch (e) {
      logger.e("Exception in  offerHomeRepoImpl :$e");
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> fetchGetAllProducts() async {
    try {
      var response = await dioConsumer
          .get("${EndPoint.baseUrl}Product/GetAllProducts") as List<dynamic>;
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
      logger.e("Exception in  ProductHomeRepoImpl :$e");
      return Left(ServerFailure(e.toString()));
    }
  }
}
