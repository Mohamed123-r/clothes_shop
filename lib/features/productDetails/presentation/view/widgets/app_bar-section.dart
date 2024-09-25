import 'package:clothes_shop_app/core/widgets/custom_love.dart';
import 'package:flutter/material.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 24,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 18,
            ),
          ),
          const Spacer(),
          const CustomLove(),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
    );
  }
}
