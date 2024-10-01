import 'package:flutter/material.dart';

abstract class Styles {
  static const heading1Bold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
  );

  static const heading2Bold = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
    height: 3.2,
  );

  static const heading3Bold = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    height: 2.8,
  );

  static const subTitle1Bold = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,

  );

  static const subTitle2Bold = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.bold,

  );

  static const bodyText1Regular = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    height: 2,
  );

  static const bodyText2Regular = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    height: 1.8,
  );

  static const caption1Regular = TextStyle(
    fontSize: 11.0,
    fontWeight: FontWeight.normal,
    height: 1.6,
  );

  static const caption2Regular = TextStyle(
    fontSize: 10.0,
    fontWeight: FontWeight.normal,
    height: 1.6,
  );

  static const buttonBold = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.25,
    height: 2,
  );

  static const textButton = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.bold,
    height: 1.8,
  );
}
