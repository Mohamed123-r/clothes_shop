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

final class IsFavoriteLoading extends ProductState {}

final class IsFavoriteSuccess extends ProductState {
  bool isFavorite = false;

  IsFavoriteSuccess({required this.isFavorite});
}

final class IsFavoriteFailure extends ProductState {
  final String message;

  IsFavoriteFailure({
    required this.message,
  });
}

final class SetFavoriteLoading extends ProductState {}

final class SetFavoriteSuccess extends ProductState {
  final bool favorite;

  SetFavoriteSuccess({
    required this.favorite,
  });
}

final class SetFavoriteFailure extends ProductState {
  final String message;

  SetFavoriteFailure({
    required this.message,
  });
}
