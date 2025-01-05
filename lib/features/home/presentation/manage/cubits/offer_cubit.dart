import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/offer_entity.dart';
import '../../../domain/repos/home_repo.dart';

part 'offer_state.dart';

class OfferCubit extends Cubit<OfferState> {
  OfferCubit({required this.homeRepo}) : super(OfferInitial());

  final HomeRepo homeRepo;

  Future<void> fetchGetAllOffers() async {
    emit(OfferLoading());
    var result = await homeRepo.fetchGetAllOver();
    result.fold((failure) => emit(OfferFailure(failure.message)),
        (offers) => emit(OfferSuccess(offers)));
  }
}
