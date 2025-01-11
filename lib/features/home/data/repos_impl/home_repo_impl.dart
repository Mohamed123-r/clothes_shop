import 'package:clothes_shop_app/core/error/exceptions.dart';
import 'package:clothes_shop_app/core/error/failures.dart';
import 'package:clothes_shop_app/features/home/data/models/Category_details_model.dart';
import 'package:clothes_shop_app/features/home/data/models/Product_model.dart';
import 'package:clothes_shop_app/features/home/domain/entities/category_details_entity.dart';
import 'package:clothes_shop_app/features/home/domain/entities/category_entity.dart';
import 'package:clothes_shop_app/features/home/domain/entities/offer_entity.dart';
import 'package:clothes_shop_app/features/home/domain/entities/product_entity.dart';
import 'package:dartz/dartz.dart';
import '../../../../constants.dart';
import '../../../../core/api/dio_consumer.dart';
import '../../../../core/api/end_point.dart';
import '../../domain/repos/home_repo.dart';
import '../models/category_model.dart';
import '../models/offer_model.dart';

class HomeRepoImpl implements HomeRepo {
  final DioConsumer dioConsumer;

  HomeRepoImpl({required this.dioConsumer});

  @override
  Future<Either<Failure, List<CategoryEntity>>> fetchGetAllCategories() async {
    try {
      var response = await dioConsumer.get("${EndPoint.baseUrl}Category/GetAllCategory")
          as List<dynamic>;

      List<CategoryEntity> category;
      category = response
          .map(
            (e) => CategoryModel.fromJson(e).toEntity(),
          )
          .toList();
      return Right(category);
    } on CustomException catch (e) {
      return Left(ServerFailure(e.toString()));
    } catch (e) {
      logger.e("Exception in  categoryHomeRepoImpl :$e");
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<CategoryDetailsEntity>>> fetchGetCategoryDetails(int id) async {
    try {
      var response = await dioConsumer
          .get("${EndPoint.baseUrl}Category/$id") as List<dynamic>;
      List<CategoryDetailsEntity> categoryDetails;
      categoryDetails = response
          .map(
            (e) => CategoryDetailsModel.fromJson(e).toEntity(),
          )
          .toList();
      return Right(categoryDetails);
    } on CustomException catch (e) {
      return Left(ServerFailure(e.toString()));
    } catch (e) {
      logger.e("Exception in  CategoryDetailsHomeRepoImpl :$e");
      return Left(ServerFailure(e.toString()));
    }
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

  @override
  Future<Either<Failure,ProductEntity>> fetchGetProductDetails(int id) async {
    try {
      var response = await dioConsumer
          .get("${EndPoint.baseUrl}Product/$id")  as Map<String, dynamic >;
      ProductEntity productDetails;
      productDetails  = ProductModel.fromJson(response).toEntity();
      return Right(productDetails);
    } on CustomException catch (e) {
      return Left(ServerFailure(e.toString()));
    } catch (e) {
      logger.e("Exception in  ProductDetailsHomeRepoImpl :$e");
      return Left(ServerFailure(e.toString()));
    }
  }



}
