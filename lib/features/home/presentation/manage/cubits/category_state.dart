part of 'category_cubit.dart';

@immutable
sealed class CategoryState {}

final class CategoryInitial extends CategoryState {}

final class CategoryLoading extends CategoryState {}

final class CategorySuccess extends CategoryState {
  final List<CategoryEntity> categories;

  CategorySuccess(this.categories);
}

final class CategoryFailure extends CategoryState {
  final String message;

  CategoryFailure(this.message);
}
