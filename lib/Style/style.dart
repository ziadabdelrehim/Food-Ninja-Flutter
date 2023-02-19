import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyColors {
  static Color LigthGreen = Color(0xff4EE489);
  static Color Black = Color(0xff000000);
  static Color White = Color(0xffffffff);
  static LinearGradient buttonGradient = LinearGradient(
      begin: Alignment(0.8, 0.1),
      end: Alignment(-0.1, 0.1),
      colors: <Color>[
        Color.fromRGBO(83, 231, 139, 1),
        Color.fromRGBO(20, 190, 119, 1)
      ]);
  static Color greyBorder = Color.fromARGB(255, 211, 210, 210);
  static Color GreyText = Color.fromRGBO(59, 59, 59, 1);
  static Color offWhiteBg = Color(0xffFEFEFF);
  static Color backIconColor = Color(0xffFEF6EE);
  static Color textFieldShadow = Color.fromRGBO(90, 108, 234, 0.07);

  static Color Yellow = Color(0xffFFE14D);
  static Color ConGrey = Color(0xffF6F6F6);
  static Color Orange = Color(0xffFF833D);
}

class MyText {
  static TextStyle BentonSansRegular = TextStyle(
      color: MyColors.GreyText,
      fontFamily: 'BentonSansBook',
      fontSize: 14,
      letterSpacing: 0.5,
      fontWeight: FontWeight.w400,
      height: 1);

  static TextStyle BentonSansBook = TextStyle(
      color: MyColors.Black,
      fontFamily: 'BentonSansBook',
      fontSize: 12,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      height: 1.5);

  static TextStyle BentonSansBold = TextStyle(
      color: MyColors.Black,
      fontFamily: 'BentonSans',
      fontSize: 20,
      fontWeight: FontWeight.w600,
      height: 1.5);

  static TextStyle BentonSansMedium = TextStyle(
    color: MyColors.LigthGreen,
    fontFamily: 'BentonSans Medium',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static TextStyle Viga = TextStyle(
      color: MyColors.LigthGreen,
      fontFamily: 'Viga',
      fontSize: 40,
      letterSpacing: 0.5,
      fontWeight: FontWeight.normal,
      height: 1);

  static TextStyle Inter = TextStyle(
      color: MyColors.Black,
      fontFamily: 'Inter',
      fontSize: 13,
      letterSpacing: 1,
      fontWeight: FontWeight.normal,
      height: 1);
}
