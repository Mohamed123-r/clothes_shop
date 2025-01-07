import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';
import '../utils/styles.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key, this.controller, this.onChanged});

  final TextEditingController? controller;

  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            onChanged: onChanged,
            controller: controller,
            cursorColor: kGreyColor,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              filled: true,
              fillColor: kWhiteColor,
              hintText: 'What are you looking for ?',
              hintStyle: Styles.buttonBold.copyWith(
                color: kGreyColor,
              ),
              prefixIcon: SvgPicture.asset(
                Assets.imagesSearchIcon,
                fit: BoxFit.scaleDown,
              ),
              suffixIcon: SvgPicture.asset(
                Assets.imagesCameraIcon,
                fit: BoxFit.scaleDown,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        // const SizedBox(
        //   width: 20,
        // ),
        // GestureDetector(
        //   onTap: onTabFromFilter,
        //   child: Container(
        //     height: 48,
        //     width: 48,
        //     decoration: BoxDecoration(
        //       color: kWhiteColor,
        //       borderRadius: BorderRadius.circular(10),
        //     ),
        //     child: Center(
        //       child: SvgPicture.asset(
        //         Assets.imagesFilterIcon,
        //       ),
        //     ),
        //   ),
        // )
      ],
    );
  }
}
