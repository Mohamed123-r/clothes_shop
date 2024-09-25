import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kVeryLightGreyColor,
      appBar: customAppbar(context, title: 'search'),
      body: const SearchViewBody(),
    );
  }
}

