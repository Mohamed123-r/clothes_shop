import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/function_help/get_dummy_product.dart';
import '../../manage/cubits/offers_cubit/offer_cubit.dart';
import 'offers_section.dart';

class OffersSectionBlocBuilder extends StatelessWidget {
  const OffersSectionBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OfferCubit, OfferState>(
      builder: (context, state) {
        if (state is OfferSuccess) {
          return OffersSection(
            offers: state.offers,
          );
        } else if (state is OfferFailure) {
          return const Center(
            child: Text(
              "Oops something went wrong, please try later",
            ),
          );
        } else {
          return Skeletonizer(
              child: OffersSection(
            offers: getDummyOffers(),
          ));
        }
      },
    );
  }
}
