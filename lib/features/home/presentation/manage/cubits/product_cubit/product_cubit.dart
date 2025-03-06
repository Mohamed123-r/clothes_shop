import 'dart:developer';

import 'package:clothes_shop_app/features/home/domain/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/entities/product_entity.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.homeRepo) : super(ProductInitial());

  final HomeRepo homeRepo;
  List<ProductEntity>? prodcuts;
  ProductEntity? prodcutDetails;
  Future<void> fetchGetAllProducts() async {
    emit(ProductLoading());
    var result = await homeRepo.fetchGetAllProducts();
    result.fold((failure) => emit(ProductFailure(failure.message)), (success) {
      emit(ProductSuccess(success));
      prodcuts = success;
    });
  }

  Future<void> fetchGetProductDetails(int id) async {
    emit(ProductLoading());
    var result = await homeRepo.fetchGetProductDetails(id);
    result.fold(
      (failure) {
        log("fail get product: ${failure.message}");

        emit(
          ProductFailure(
            failure.message,
          ),
        );
      },
      (product) async {
        await isFavorite(productId: id);
        log(product.name);
        emit(
          ProductDetailsSuccess(product),
        );
        prodcutDetails = product;
      },
    );
  }

  bool isProductFavorite = false;
  Future<void> isFavorite({required int productId}) async {
    // emit(IsFavoriteLoading());
    var result = await homeRepo.isFavorite(productId: productId);
    result.fold(
      (success) {
        log(success.toString());
        isProductFavorite = success.isFavorite;
        // emit(IsFavoriteSuccess(isFavorite: success.isFavorite));
      },
      (failure) {
        log("fail: ${failure.message}");
        // emit(IsFavoriteFailure(message: failure.message));
      },
    );
  }

  Future<void> setFavorite({required int productId}) async {
    emit(SetFavoriteLoading());
    var result = await homeRepo.setFavorite(
      productId: productId,
      isFavorite: isProductFavorite,
    );
    result.fold(
      (success) {
        isProductFavorite = success;
        emit(SetFavoriteSuccess(favorite: success));
        log('set done');
      },
      (failure) {
        emit(SetFavoriteFailure(message: failure.message));
        log('set fail');
      },
    );
  }
}
