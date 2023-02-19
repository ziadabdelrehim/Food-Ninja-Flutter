import 'package:final_project/custWid/nextButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Style/style.dart';

class MyGetStart extends StatefulWidget {
  Function() onNextTap;
  String image;
  String title1;
  String title2;
  double textConWidth;
  double textConLefPos;

  MyGetStart(
      {required this.image,
      required this.title1,
      required this.title2,
      required this.onNextTap,
      required this.textConWidth,
      required this.textConLefPos});

  @override
  State<MyGetStart> createState() => _MyGetStartState();
}

class _MyGetStartState extends State<MyGetStart> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        top: 56.83,
        child: Container(
            width: 408.5,
            height: 434.22,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.image), fit: BoxFit.fitWidth),
            )),
      ),
      Positioned(
        top: 530,
        left: widget.textConLefPos,
        child: Container(
          width: widget.textConWidth,
          height: 122,
          child: Column(children: [
            Text(
              widget.title1,
              textAlign: TextAlign.center,
              style: MyText.BentonSansBold.copyWith(fontSize: 22),
            ),
            SizedBox(height: 20),
            Text(
              widget.title2,
              textAlign: TextAlign.center,
              style: MyText.BentonSansBook,
            ),
          ]),
        ),
      ),
      Positioned(
        top: 694,
        left: 109,
        right: 109,
        child: InkWell(
            onTap: widget.onNextTap,
            child: NextButton(
              height: 57,
              width: 157,
              buttonText: "Next",
            )),
      ),
    ]);
  }
}
