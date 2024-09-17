import 'package:flutter/material.dart';
import '../../constants.dart';

class CustomLove extends StatefulWidget {
  const CustomLove({super.key});

  @override
  State<CustomLove> createState() => _CustomLoveState();
}

class _CustomLoveState extends State<CustomLove> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
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
