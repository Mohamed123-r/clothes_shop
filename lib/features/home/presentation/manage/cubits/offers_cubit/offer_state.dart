part of 'offer_cubit.dart';

sealed class OfferState {}

final class OfferInitial extends OfferState {}

final class OfferLoading extends OfferState {}

final class OfferSuccess extends OfferState {
  final List<OfferEntity> offers;

  OfferSuccess(this.offers);
}

final class OfferFailure extends OfferState {
  final String message;

  OfferFailure(this.message);
}
