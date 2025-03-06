import 'package:clothes_shop_app/core/function_help/get_dummy_product.dart';
import 'package:clothes_shop_app/features/home/presentation/manage/cubits/category_cubit/category_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'categories_section.dart';

class CategoriesSectionBlocBuilder extends StatelessWidget {
  const CategoriesSectionBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        if (state is CategorySuccess) {
          return CategoriesSection(
            categories: state.categories,
          );
        } else if (state is CategoryFailure) {
          return const Center(
            child: Text(
              "Oops something went wrong, please try later",
            ),
          );
        } else {
          return Skeletonizer(
            child: CategoriesSection(
              categories: getDummyCategories(),
            ),
          );
        }
      },
    );
  }
}
