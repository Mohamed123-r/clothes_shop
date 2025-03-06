import 'dart:developer';

import 'package:clothes_shop_app/core/error/exceptions.dart';
import 'package:clothes_shop_app/core/error/failures.dart';
import 'package:clothes_shop_app/features/home/data/models/Category_details_model.dart';
import 'package:clothes_shop_app/features/home/data/models/Product_model.dart';
import 'package:clothes_shop_app/features/home/data/models/favorite.dart';
import 'package:clothes_shop_app/features/home/domain/entities/category_details_entity.dart';
import 'package:clothes_shop_app/features/home/domain/entities/category_entity.dart';
import 'package:clothes_shop_app/features/home/domain/entities/offer_entity.dart';
import 'package:clothes_shop_app/features/home/domain/entities/product_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
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
      var response = await dioConsumer
          .get("${EndPoint.baseUrl}Category/GetAllCategory") as List<dynamic>;

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
  Future<Either<Failure, List<CategoryDetailsEntity>>> fetchGetCategoryDetails(
      int id) async {
    try {
      var response = await dioConsumer.get("${EndPoint.baseUrl}Category/$id")
          as List<dynamic>;
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
  Future<Either<Failure, ProductEntity>> fetchGetProductDetails(int id) async {
    try {
      var response = await dioConsumer.get("${EndPoint.baseUrl}Product/$id")
          as Map<String, dynamic>;
      ProductEntity productDetails;
      productDetails = ProductModel.fromJson(response).toEntity();
      return Right(productDetails);
    } on CustomException catch (e) {
      return Left(ServerFailure(e.toString()));
    } catch (e) {
      logger.e("Exception in  ProductDetailsHomeRepoImpl :$e");
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Favorite, Failure>> isFavorite({
    required int productId,
  }) async {
    try {
      Response response = await Dio()
          .post("${EndPoint.baseUrl}Favorite/IsFavorite?productId=$productId",
              options: Options(headers: {
                "Authorization": "Bearer eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImEzMzUzZjk4LTdiNWEtNGIzYi05ZmMxLTc1YjViODVkOWM0MiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2dpdmVubmFtZSI6Ik1haG1vdWQgTWFnZHkiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9lbWFpbGFkZHJlc3MiOiJNYWhtb3VkTWFnZHkxNzYyMDNAZ21haWwuY29tIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiVXNlciIsImV4cCI6MTc0MTMzNjU0MywiaXNzIjoiaHR0cHM6Ly9sb2NhbGhvc3Q6NzEwOCIsImF1ZCI6IlNlY3J1cmUifQ.rClBP2E1GqWxnFKNnujTonQEEloOX6FdEmTkmNghl1s",
              }));
      // var response = await dioConsumer
      //     .post("${EndPoint.baseUrl}Favorite/IsFavorite", body: {
      //   'productId': productId,
      // }) as Map<String, dynamic>;

      // log(response.toString());
      Favorite favorite = Favorite.fromJson(response.data);
      return Left(favorite);
    } on CustomException catch (e) {
      log("fail repo: ${e.message}");
      return Right(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<bool, Failure>> setFavorite({
    required int productId,
    required bool isFavorite,
  }) async {
    try {
      final String url = '${EndPoint.baseUrl}Favorite/$productId';

      final response = isFavorite
          ? await dioConsumer.delete(url)
          : await dioConsumer.post(url);

      log(response.toString());

      return Left(!isFavorite);
    } catch (e) {
      logger.e("Exception in ProductDetailsHomeRepoImpl: $e");
      return Right(ServerFailure(e.toString()));
    }
  }
}
