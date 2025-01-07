import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/widgets/custom_app_bar.dart';
import 'package:clothes_shop_app/features/home/presentation/view/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/function_help/get_it.dart';
import '../../domain/repos/home_repo.dart';
import '../manage/cubits/product_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(
        getIt.get<HomeRepo>(),
      ),
      child: Scaffold(
        backgroundColor: kVeryLightGreyColor,
        appBar: customAppbar(context, title: 'search'),
        body: const SearchViewBody(),
      ),
    );
  }
}
