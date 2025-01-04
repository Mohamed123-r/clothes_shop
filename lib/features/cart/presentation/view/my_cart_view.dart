import 'package:clothes_shop_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context, title: 'My Cart', actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart_outlined,
          ),
        ),
      ]),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child:
        Column(
          children: [
            // Slidable(
            //
            //   endActionPane: ActionPane(
            //     motion: const ScrollMotion(),
            //     children: [
            //       SlidableAction(
            //
            //         onPressed: (context) {},
            //         backgroundColor:kLightGreyColor ,
            //         foregroundColor:Colors.red ,
            //         borderRadius:  const BorderRadius.only(
            //           topRight: Radius.circular(16),
            //           bottomRight: Radius.circular(16),
            //         ) ,
            //         spacing: 40,
            //         flex: 2,
            //         icon: Icons.delete,
            //       ),
            //     ],
            //   ),
            //   child:  Container(
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(16),
            //       color: kWhiteColor,
            //       border: Border.all(color: kLightGreyColor),
            //       boxShadow: const [
            //         BoxShadow(
            //           color: kLightGreyColor,
            //           spreadRadius: 5,
            //           blurRadius: 7,
            //           offset: Offset(0, 3), // changes position of shadow
            //         ),
            //       ],
            //     ),
            //     child: Row(
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Image.asset(Assets.imagesProducteDetailsTest,
            //               width: 85, height: 85, fit: BoxFit.cover),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.symmetric(horizontal: 8.0),
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               const SizedBox(
            //                 height: 8,
            //               ),
            //               const Text('T-Shirt', style: Styles.subTitle1Bold),
            //               const SizedBox(
            //                 height: 8,
            //               ),
            //               Text(
            //                 ' T-Shirt',
            //                 style: Styles.caption2Regular.copyWith(
            //                   color: kGreyColor,
            //                 ),
            //               ),
            //               const SizedBox(
            //                 height: 8,
            //               ),
            //               Row(
            //                 mainAxisSize: MainAxisSize.max,
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Text(
            //                     '\$ 10.00',
            //                     style: Styles.subTitle2Bold.copyWith(
            //                       color: kDarkGreyColor,
            //                     ),
            //                   ),
            //                   const SizedBox(
            //                     width: 48,
            //                   ),
            //                   const CustomCounter(),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
