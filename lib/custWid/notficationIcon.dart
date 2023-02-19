import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Style/style.dart';

class NotiIcon extends StatelessWidget {
  const NotiIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: 45,
        height: 45,
        child: Image(image: AssetImage("assets/images/IconNotifiaction.png")),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: MyColors.White),
          color: MyColors.White,
        ),
      ),
    );
  }
}
