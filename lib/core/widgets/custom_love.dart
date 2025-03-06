import 'package:flutter/material.dart';
import '../../constants.dart';

class CustomLove extends StatelessWidget {
  const CustomLove({
    super.key,
    required this.isFavorite,
    required this.isFavoriteOnTap,
  });

  final bool isFavorite;

  final Function() isFavoriteOnTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isFavoriteOnTap,
      child: CircleAvatar(
        radius: 16,
        backgroundColor: kLightGreyColor,
        child: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
        ),
      ),
    );
  }
}
