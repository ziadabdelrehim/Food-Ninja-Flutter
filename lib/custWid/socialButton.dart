import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Style/style.dart';

class SocialButton extends StatelessWidget {
  String icon;
  String text;
  SocialButton({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152,
      height: 57,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        border: Border.all(color: MyColors.greyBorder),
        color: MyColors.White,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 16,
          ),
          CircleAvatar(
              radius: 12.5,
              backgroundColor: Colors.transparent,
              child: Image(
                image: AssetImage(icon),
              )),
          SizedBox(
            width: 13,
          ),
          Text(
            text,
            style: MyText.BentonSansMedium.copyWith(
                fontSize: 14, color: MyColors.Black),
          )
        ],
      ),
    );
  }
}
