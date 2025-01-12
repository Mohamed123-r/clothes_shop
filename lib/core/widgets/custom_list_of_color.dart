import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomListOfColor extends StatelessWidget {
  const CustomListOfColor({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            color: kLightGreyColor,
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        color: kWhiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 7,
            backgroundColor: colors[0],
          ),
          CircleAvatar(
            radius: 7,
            backgroundColor: colors[1],
          ),
          CircleAvatar(
            radius: 7,
            backgroundColor: colors[2],
          ),
          CircleAvatar(
            radius: 7,
            backgroundColor: colors[3],
          ),
        ],
      ),
    );
  }
}
