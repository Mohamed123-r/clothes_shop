import 'package:flutter/material.dart';

import '../../../../home/presentation/view/widgets/categories_item.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        spacing: 50,
        runSpacing: 15,
        children: List.generate(
          10,
          (index) => const CategoriesItem(
            title: 'Kids',
          ),
        ),
      ),
    );
  }
}