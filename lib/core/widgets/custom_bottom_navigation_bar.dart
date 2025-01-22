import 'package:clothes_shop_app/features/cart/presentation/view/my_cart_view.dart';
import 'package:clothes_shop_app/features/home/presentation/view/categories_view.dart';
import 'package:clothes_shop_app/features/home/presentation/manage/cubits/category_cubit.dart';
import 'package:clothes_shop_app/features/home/presentation/manage/cubits/offer_cubit.dart';
import 'package:clothes_shop_app/features/home/presentation/manage/cubits/product_cubit.dart';
import 'package:clothes_shop_app/features/home/presentation/view/home_view.dart';
import 'package:clothes_shop_app/features/profile/domain/repos/profile_repo.dart';
import 'package:clothes_shop_app/features/profile/presentation/manage/cubits/profile_cubit.dart';
import 'package:clothes_shop_app/features/profile/presentation/view/account_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';
import '../../features/home/domain/repos/home_repo.dart';
import '../../generated/assets.dart';
import '../function_help/get_it.dart';
import '../utils/styles.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: kFontColor,
            selectedLabelStyle: Styles.caption1Regular,
            selectedItemColor: kWhiteColor,
            unselectedItemColor: kGreyColor,
            currentIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  _selectedIndex != 0
                      ? Assets.imagesHomeIcon1
                      : Assets.imagesHomeIcon2,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  _selectedIndex != 1
                      ? Assets.imagesCategoriesIcon1
                      : Assets.imagesCategoriesIcon2,
                ),
                label: 'Categories',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  _selectedIndex != 2
                      ? Assets.imagesCartIcon1
                      : Assets.imagesCartIcon2,
                ),
                label: 'My Cart',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  _selectedIndex != 3
                      ? Assets.imagesAccountIcon1
                      : Assets.imagesAccountIcon2,
                ),
                label: 'Account',
              ),
            ]),
        body: <Widget>[
          MultiBlocProvider(providers: [
            BlocProvider(
                create: (context) => ProductCubit(
                      getIt.get<HomeRepo>(),
                    )),
            BlocProvider(
                create: (context) => OfferCubit(
                      homeRepo: getIt.get<HomeRepo>(),
                    )),
            BlocProvider(
                create: (context) => CategoryCubit(
                      homeRepo: getIt.get<HomeRepo>(),
                    )),
          ], child: const HomeView()),
          BlocProvider(
            create: (context) => CategoryCubit(
              homeRepo: getIt.get<HomeRepo>(),
            ),
            child: const CategoriesView(),
          ),
          const MyCartView(),
          BlocProvider(
            create: (context) => ProfileCubit(
              profileRepo: getIt.get<ProfileRepo>(),
            ),
            child: const AccountView(),
          ),
        ][_selectedIndex]);
  }
}
