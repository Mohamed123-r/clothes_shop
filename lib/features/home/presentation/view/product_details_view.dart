import 'package:clothes_shop_app/core/function_help/get_dummy_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../core/function_help/get_it.dart';
import '../../domain/repos/home_repo.dart';
import '../manage/cubits/product_cubit.dart';
import 'widgets/product_details_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: BlocProvider(
          create: (context) => ProductCubit(
            getIt.get<HomeRepo>(),
          ),
          child: ProductDetailsBodyBlocBuilder(
            id: id,
          ),
        ),
      ),
    );
  }
}

class ProductDetailsBodyBlocBuilder extends StatefulWidget {
  const ProductDetailsBodyBlocBuilder({
    super.key,
    required this.id,
  });

  final int id;

  @override
  State<ProductDetailsBodyBlocBuilder> createState() =>
      _ProductDetailsBodyBlocBuilderState();
}

class _ProductDetailsBodyBlocBuilderState
    extends State<ProductDetailsBodyBlocBuilder> {
  @override
  void initState() {
    context.read<ProductCubit>().fetchGetProductDetails(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductDetailsSuccess) {
          return ProductDetailsBody(
            productDetails: state.productDetails,
          );
        } else if (state is ProductFailure) {
          return const Center(
            child: Text(
              "Oops something went wrong, please try later",
            ),
          );
        } else {
          return Skeletonizer(
            child: ProductDetailsBody(
              productDetails: getDummyProduct(),
            ),
          );
        }
      },
    );
  }
}
