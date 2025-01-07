import 'package:clothes_shop_app/core/widgets/custom_search.dart';
import 'package:clothes_shop_app/features/home/domain/entities/product_entity.dart';
import 'package:clothes_shop_app/features/home/presentation/view/widgets/search_lest_item.dart';
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
  TextEditingController controller = TextEditingController();
  String searchText = '';
  List<ProductEntity> answerdList = [];


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
        child: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            if (state is ProductSuccess) {
              return Column(
                children: [
                  CustomSearch(
                    onChanged: (text) {
                      List<ProductEntity> searchProduct =
                          state.productsList;
                      answerdList.clear();
                      searchText = text;
                      for (var i = 0; i < searchProduct.length; i++) {
                        if (searchProduct[i]
                            .name
                            .toLowerCase()
                            .contains(text.toLowerCase())) {
                          answerdList.add(searchProduct[i]);

                        }
                      }
                      setState(() {});
                    },
                  ),

                  searchText.isNotEmpty && answerdList.isEmpty
                      ? const Padding(
                          padding: EdgeInsets.only(top: 42.0),
                          child: Center(
                            child: Text(
                              'No results . \n search about product.',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      : SearchListItem(
                          products: answerdList,
                        ),
                ],
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
      ),
    );
  }
}
