import 'package:clothes_shop_app/core/function_help/get_dummy_product.dart';
import 'package:clothes_shop_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../core/function_help/get_it.dart';
import '../../domain/repos/home_repo.dart';
import '../manage/cubits/category_cubit/category_cubit.dart';
import 'widgets/categories_details_view_body.dart';

class CategoriesDetailsView extends StatelessWidget {
  const CategoriesDetailsView({super.key, required this.id});
  final int id ;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryCubit(
        homeRepo: getIt.get<HomeRepo>(),
      ),
      child: Scaffold(
        appBar: customAppbar(
          context,
          title: 'categories details',
        ),
        body: CategoryDetailsViewBuilder(id:id ,),
      ),
    );
  }
}

class CategoryDetailsViewBuilder extends StatefulWidget {
  const CategoryDetailsViewBuilder({
    super.key, required this.id,
  });
final int id ;
  @override
  State<CategoryDetailsViewBuilder> createState() => _CategoryDetailsViewBuilderState();
}

class _CategoryDetailsViewBuilderState extends State<CategoryDetailsViewBuilder> {
  @override
  void initState() {
    context.read<CategoryCubit>().fetchGetCategoryDetails(widget.id);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        if (state is CategoryDetailsSuccess) {
          return CategoriesDetailsViewBody(
            categoriesDetails: state.categoryDetails,
          );
        } else if (state is CategoryFailure) {
          return const Center(
            child: Text(
              "Oops something went wrong, please try later",
            ),
          );
        } else {
          return Skeletonizer(
            child: CategoriesDetailsViewBody(
              categoriesDetails: getDummyCategoryDetails(),

            ),
          );
        }
      },
    );
  }
}
