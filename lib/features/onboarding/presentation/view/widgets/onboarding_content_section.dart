import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';

class OnboardingContentSection extends StatelessWidget {
  const OnboardingContentSection({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Styles.heading1Bold,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
