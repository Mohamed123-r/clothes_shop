import 'package:bloc/bloc.dart';
import 'package:clothes_shop_app/features/home/domain/entities/category_entity.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/category_details_entity.dart';
import '../../../domain/repos/home_repo.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit({required this.homeRepo}) : super(CategoryInitial());
  final HomeRepo homeRepo;

  Future<void> fetchGetAllCategory() async {
    emit(CategoryLoading());
    var result = await homeRepo.fetchGetAllCategories();
    result.fold((failure) => emit(CategoryFailure(failure.message)),
        (categories) => emit(CategorySuccess(categories)));
  }

  Future<void> fetchGetCategoryDetails(int id) async {
    emit(CategoryLoading());
    var result = await homeRepo.fetchGetCategoryDetails(id);
    result.fold((failure) => emit(CategoryFailure(failure.message)),
        (categories) => emit(CategoryDetailsSuccess(categories)));
  }
}
