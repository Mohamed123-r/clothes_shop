import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/app_router.dart';
import 'package:clothes_shop_app/core/widgets/custom_search.dart';
import 'package:clothes_shop_app/features/home/presentation/manage/cubits/category_cubit.dart';
import 'package:clothes_shop_app/features/home/presentation/manage/cubits/offer_cubit.dart';
import 'package:clothes_shop_app/features/home/presentation/view/widgets/sliver_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../manage/cubits/product_cubit.dart';
import 'categories_section_bloc_builder.dart';
import 'new_arrival_section_bloc_consumer.dart';
import 'offers_sections_bloc_builder.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    context.read<ProductCubit>().fetchGetAllProducts();
    context.read<OfferCubit>().fetchGetAllOffers();
    context.read<CategoryCubit>().fetchGetAllCategory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: kFontColor,
        statusBarIconBrightness: Brightness.light,
      ),
      child: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              const CustomSliverAppBar(),
            ];
          },
          body: Scaffold(
            body: Column(
              children: [
                Container(
                  padding:
                  const EdgeInsets.only(bottom: 16, right: 16, left: 16),
                  decoration: const BoxDecoration(
                      color: kFontColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                      )),
                  child: CustomSearch(
                    onTabFromFilter: () {
                      Navigator.push(
                        context,
                        AppRouter.router(
                          const RouteSettings(
                            name: AppRouter.kSearchView,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        OffersSectionBlocBuilder(),
                        SizedBox(
                          height: 8,
                        ),
                        CategoriesSectionBlocBuilder(),
                        SizedBox(
                          height: 8,
                        ),
                        NewArrivalSectionBlocConsumer(),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


