import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Style/style.dart';

class PhotoMethod extends StatelessWidget {
  String image;
  String text;
  PhotoMethod({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      shadowColor: MyColors.textFieldShadow,
      borderRadius: BorderRadius.circular(22),
      child: Container(
        width: 325,
        height: 129,
        child: Column(
          children: [
            SizedBox(
              height: 23,
            ),
            Image(image: AssetImage(image)),
            SizedBox(
              height: 20,
            ),
            Text(
              this.text,
              style: MyText.BentonSansBold.copyWith(fontSize: 14),
            )
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: MyColors.textFieldShadow),
          color: MyColors.White,
        ),
      ),
    );
  }
}
