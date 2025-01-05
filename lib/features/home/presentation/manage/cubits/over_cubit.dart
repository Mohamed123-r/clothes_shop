import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/over_entity.dart';
import '../../../domain/repos/home_repo.dart';

part 'over_state.dart';

class OverCubit extends Cubit<OfferState> {
  OverCubit({required this.homeRepo}) : super(OfferInitial());

  final HomeRepo homeRepo;

  Future<void> fetchGetAllOffers() async {
    emit(OfferLoading());
    var result = await homeRepo.fetchGetAllOver();
    result.fold((failure) => emit(OfferFailure(failure.message)),
        (offers) => emit(OfferSuccess(offers)));
  }
}
