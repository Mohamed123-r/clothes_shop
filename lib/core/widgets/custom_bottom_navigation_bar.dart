import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';
import '../../generated/assets.dart';
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
        bottomNavigationBar: SizedBox(
          height: 60,
          child: BottomNavigationBar(
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
                  label: 'Wishlist',
                ),
              ]),
        ),
        body: <Widget>[
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.deepOrange,
          ),
          Container(
            color: Colors.black12,
          ),
          Container(
            color: Colors.green,
          ),
        ][_selectedIndex]);
  }
}