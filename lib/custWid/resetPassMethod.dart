import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Style/style.dart';

class PassMethod extends StatelessWidget {
  double conWidth;
  double conHeight;
  String image;
  String text1;
  String text2;
  double letteringSpace;
  PassMethod(
      {required this.conWidth,
      required this.conHeight,
      required this.image,
      required this.text1,
      required this.text2,
      required this.letteringSpace});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      shadowColor: MyColors.textFieldShadow,
      borderRadius: BorderRadius.circular(22),
      child: Container(
        width: this.conWidth,
        height: this.conHeight,
        child: Padding(
          padding: const EdgeInsets.only(left: 26.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(image: AssetImage(image)),
              SizedBox(
                width: 19,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: MyText.BentonSansMedium.copyWith(
                      color: MyColors.GreyText,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    text2,
                    style: MyText.BentonSansBold.copyWith(
                        fontSize: 16,
                        letterSpacing: letteringSpace,
                        color: MyColors.Black),
                  )
                ],
              )
            ],
          ),
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
