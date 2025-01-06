import 'package:clothes_shop_app/core/function_help/get_dummy_product.dart';
import 'package:clothes_shop_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../manage/cubits/category_cubit.dart';
import 'widgets/categories_view_body.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({super.key});

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  @override
  void initState() {

    context.read<CategoryCubit>().fetchGetAllCategory();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context, title: 'categories'),
      body:  BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          if (state is CategorySuccess) {
            return CategoriesViewBody(categories: state.categories,);
          } else if (state is CategoryFailure) {
            return const Center(
              child: Text(
                "Oops something went wrong, please try later",
              ),
            );
          } else {
            return Skeletonizer(
              child:CategoriesViewBody(categories: getDummyCategories(),

              ),
            );
          }
        },
      ),
    );
  }
}
