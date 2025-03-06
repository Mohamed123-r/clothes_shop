
import 'package:clothes_shop_app/core/widgets/custom_love.dart';
import 'package:clothes_shop_app/features/home/presentation/manage/cubits/product_cubit/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 24,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 18,
            ),
          ),
          const Spacer(),
          IsFavoriteBuilder(),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
    );
  }
}

class IsFavoriteBuilder extends StatelessWidget {
  const IsFavoriteBuilder({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    ProductCubit cubit = context.read<ProductCubit>();
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        return CustomLove(
          isFavorite: cubit.isProductFavorite,
          isFavoriteOnTap: () async {
            await cubit.setFavorite(productId: cubit.prodcutDetails!.id as int);
          },
        );
      },
    );
  }
}
