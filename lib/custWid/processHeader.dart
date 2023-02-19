import 'package:final_project/custWid/patternStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Style/style.dart';
import 'backButton.dart';

class MyProcessHeader extends StatelessWidget {
  double contWidth;
  double conHeight;
  String text1;
  String text2;
  MyProcessHeader(
      {required this.contWidth,
      required this.conHeight,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MyPattern(
          height: 488,
        ),
        Positioned(top: 38, left: 25, right: 305, child: MyBackButton()),
        Positioned(
            top: 103,
            left: 25,
            right: 86,
            child: Container(
              height: conHeight,
              width: contWidth,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style: MyText.BentonSansBold.copyWith(fontSize: 25),
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    Text(
                      text2,
                      style: MyText.BentonSansBook,
                    )
                  ]),
            ))
      ],
    );
  }
}
