import 'package:bloc/bloc.dart';
import 'package:clothes_shop_app/features/home/domain/repos/home_repo.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/product_entity.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.homeRepo) : super(ProductInitial());

  final HomeRepo homeRepo;

  Future<void> fetchGetAllProducts() async {
    emit(ProductLoading());
    var result = await homeRepo.fetchGetAllProducts();
    result.fold((failure) => emit(ProductFailure(failure.message)),
        (products) => emit(ProductSuccess(products)));
  }
}
