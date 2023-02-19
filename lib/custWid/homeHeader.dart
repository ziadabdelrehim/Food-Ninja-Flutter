import 'package:final_project/custWid/notficationIcon.dart';
import 'package:final_project/custWid/patternStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Style/style.dart';

class HomeHeader extends StatelessWidget {
  double conHeight;
  double conWidth;
  String text1;
  HomeHeader(
      {required this.conHeight, required this.conWidth, required this.text1});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Stack(
      children: [
        MyPattern(
          height: 488,
        ),
        Positioned(
            top: 60,
            left: 25,
            right: 86,
            child: Container(
              height: 82,
              width: 233,
              child: Text(
                text1,
                style: MyText.BentonSansBold.copyWith(fontSize: 31, height: 0),
              ),
            )),
        Positioned(top: 71, left: 310, child: NotiIcon()),
      ],
    );
  }
}
