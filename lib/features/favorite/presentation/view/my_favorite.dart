import 'package:clothes_shop_app/core/widgets/custom_app_bar.dart';
import 'package:clothes_shop_app/core/widgets/custom_cart.dart';
import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'widgets/taps_section.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context, title: 'My Favorite'),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const TapsSection(),
            const SizedBox(height: 24.0),
            SingleChildScrollView(
              child: GridView.count(
                padding: EdgeInsets.zero,
                crossAxisCount: 2,
                childAspectRatio: 0.65,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(
                  3,
                      (index) {
                    return const CustomCart(
                      title: 'Muslim Tops Loose',
                      subTitle: 'Isdal',
                      price: '1500EG',
                      image: Assets.imagesTest, id: 1,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
