part of 'product_cubit.dart';

sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class ProductLoading extends ProductState {}

final class ProductSuccess extends ProductState {
  final List<ProductEntity> productsList;
  ProductSuccess(this.productsList);
}

final class ProductFailure extends ProductState {
  final String message;
  ProductFailure(this.message);
}

final class ProductDetailsSuccess extends ProductState {
  final ProductEntity productDetails;
  ProductDetailsSuccess(this.productDetails);
}
