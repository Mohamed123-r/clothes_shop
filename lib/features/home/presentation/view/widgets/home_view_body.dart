import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/app_router.dart';
import 'package:clothes_shop_app/core/widgets/custom_search.dart';
import 'package:clothes_shop_app/features/home/presentation/view/widgets/sliver_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'categories_section.dart';
import 'new_arrival_section.dart';
import 'offers_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

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
                        OffersSection(),
                        CategoriesSection(),
                        SizedBox(
                          height: 16,
                        ),
                        NewArrivalSection(),
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
