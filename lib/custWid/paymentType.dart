import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Style/style.dart';

class MyMethod extends StatelessWidget {
  String image;
  double conWidth;
  double conHeight;
  MyMethod(
      {required this.image, required this.conHeight, required this.conWidth});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      shadowColor: MyColors.textFieldShadow,
      borderRadius: BorderRadius.circular(22),
      child: Container(
        width: this.conWidth,
        height: this.conHeight,
        child: Image(image: AssetImage(image)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: MyColors.textFieldShadow),
          color: MyColors.White,
        ),
      ),
    );
  }
}
