import 'package:clothes_shop_app/core/widgets/custom_button.dart';
import 'package:clothes_shop_app/features/onboarding/presentation/view/widgets/onboarding_bottom_navigation_bar.dart';
import 'package:clothes_shop_app/features/onboarding/presentation/view/widgets/onboarding_view_body.dart';
import 'package:flutter/material.dart';
import '../../../../constants.dart';
import '../../../../generated/assets.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView>
    with TickerProviderStateMixin {
  TabController? _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    _controller = TabController(length: 3, vsync: this);
    _controller!.addListener(() {
      setState(() {
        _selectedIndex = _controller!.index;
      });
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      bottomNavigationBar: OnboardingBottomNavigationBar(
        selectedIndex: _selectedIndex,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: Column(
          children: [
            Expanded(
              child: DefaultTabController(
                length: 3,
                child: TabBarView(
                  controller: _controller,
                  children: [
                    OnboardingViewBody(
                      theFirst: true,
                      onPressedToSkip: () {
                        _controller?.animateTo(_selectedIndex = 2);
                        setState(() {});
                      },
                      image: Assets.imagesOnboarding1,
                      title: 'All Types Within  \n Your Reach',
                    ),
                    OnboardingViewBody(
                      onPressedToSkip: () {
                        _controller?.animateTo(_selectedIndex = 2);
                        setState(() {});
                      },
                      onPressedToBack: () {
                        _controller?.animateTo(_selectedIndex -= 1);
                        setState(() {});
                      },
                      image: Assets.imagesOnboarding2,
                      title: 'Take Advantage \n Of The Offer Shopping',
                    ),
                    OnboardingViewBody(
                      onPressedToBack: () {
                        _controller?.animateTo(_selectedIndex -= 1);
                        setState(() {});
                      },
                      image: Assets.imagesOnboarding3,
                      title: '20% Discount \n New Arrival Product',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            _selectedIndex == 2
                ?const SizedBox(
              height: 24,
            )
                : const SizedBox(

            ),
            Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomButton(
                title: _selectedIndex != 2 ? 'Next' :"Get Start",
                onPressed: () {
                  _controller?.animateTo(_selectedIndex += 1);
                  setState(
                    () {},
                  );
                },
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            _selectedIndex != 2
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CustomButton(
                      isDefault: false,
                      title: 'Skip',
                      onPressed: () {
                        _controller?.animateTo(_selectedIndex = 2);
                        setState(
                          () {},
                        );
                      },
                    ),
                  )
                : const SizedBox(
                    height: 24,
                  ),
          ],
        ),
      ),
    );
  }
}
