import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/custom_progress_indicators.dart';

class OnboardingBottomNavigationBar extends StatelessWidget {
  const OnboardingBottomNavigationBar({
    super.key,
    required int selectedIndex,
  }) : _selectedIndex = selectedIndex;

  final int _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kWhiteColor,
      ),
      child: Center(
        child: SizedBox(
          height: 6,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                width: 6,
              );
            },
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return CustomProgressIndicators(
                isActive: _selectedIndex == index ? true : false,
              );
            },
            itemCount: 3,
          ),
        ),
      ),
    );
  }
}
