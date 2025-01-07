import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:clothes_shop_app/core/widgets/custom_cart.dart';
import 'package:clothes_shop_app/core/widgets/custom_search.dart';
import 'package:clothes_shop_app/features/home/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../../core/function_help/get_dummy_product.dart';
import '../../manage/cubits/product_cubit.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  @override
  void initState() {
    context.read<ProductCubit>().fetchGetAllProducts();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            CustomSearch(
              onTabFromFilter: () {},
            ),
            BlocBuilder<ProductCubit, ProductState>(
              builder: (context, state) {
                if (state is ProductSuccess) {
                  return SearchListItem(
                    products: state.productsList,
                  );
                } else if (state is ProductFailure) {
                  return const Center(
                    child: Text(
                      "Oops something went wrong, please try later",
                    ),
                  );
                } else {
                  return Skeletonizer(
                    child: SearchListItem(
                      products: getDummyProducts(),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SearchListItem extends StatelessWidget {
  const SearchListItem({
    super.key,
    required this.products,
  });

  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        Row(
          children: [
            Text(
              'Result for suit',
              style: Styles.subTitle1Bold.copyWith(color: kDarkGreyColor),
            ),
            const Spacer(),
            Text(
              '${products.length} founds',
              style: Styles.caption1Regular.copyWith(
                color: kGreyColor,
                decorationColor: kGreyColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.only(bottom: 24.0),
          child: GridView.count(
            padding: EdgeInsets.zero,
            crossAxisCount: 2,
            childAspectRatio: 0.65,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(
              products.length,
              (index) {
                return CustomCart(
                  title: products[index].name,
                  subTitle: products[index].subCategory,
                  price: products[index].price.toString(),
                  image: products[index].imagePath,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
