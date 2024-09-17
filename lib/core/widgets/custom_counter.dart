import 'package:clothes_shop_app/constants.dart';
import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomCounter extends StatefulWidget {
  const CustomCounter({super.key});

  @override
  State<CustomCounter> createState() => _ProductCustomQuantityState();
}

class _ProductCustomQuantityState extends State<CustomCounter> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: kLightGreyColor,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              if (quantity > 0) {
                setState(() {
                  quantity--;
                });
              }
            },
            icon: const Icon(Icons.remove, size: 16),
            color: quantity == 0 ? kGreyColor : kBlackColor,
          ),
          Expanded(
            child: Center(
              child: Text(quantity.toString(), style: Styles.bodyText1Regular),
            ),
          ),
          IconButton(
            onPressed: () {
              if (quantity < 10) {
                setState(() {
                  quantity++;
                });
              }
            },
            icon: const Icon(Icons.add, size: 16),
            color: quantity == 10 ? kGreyColor : kBlackColor,
          ),
        ],
      ),
    );
  }
}
