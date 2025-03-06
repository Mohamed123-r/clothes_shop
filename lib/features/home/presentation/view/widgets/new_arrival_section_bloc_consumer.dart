import 'package:clothes_shop_app/core/function_help/get_dummy_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../manage/cubits/product_cubit/product_cubit.dart';
import 'new_arrival_section.dart';

class NewArrivalSectionBlocConsumer extends StatelessWidget {
  const NewArrivalSectionBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductSuccess) {
          return NewArrivalSection(products: state.productsList);
        } else if (state is ProductFailure) {
          return const Center(
            child: Text(
              "Oops something went wrong, please try later",
            ),
          );
        } else {
          return Skeletonizer(
            child: NewArrivalSection(
              products: getDummyProducts(),
            ),
          );
        }
      },
    );
  }
}
