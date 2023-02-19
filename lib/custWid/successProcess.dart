import 'package:final_project/custWid/patternStyle.dart';

import 'package:flutter/material.dart';

import '../Style/style.dart';

class sucessProcess extends StatefulWidget {
  String Text;
  sucessProcess({required this.Text});

  @override
  State<sucessProcess> createState() => _sucessProcessState();
}

class _sucessProcessState extends State<sucessProcess> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MyPattern(height: 870),
        Positioned(
            top: 227,
            left: 103,
            right: 101,
            child: Container(
              width: 172,
              height: 162,
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  image: AssetImage("assets/images/GreenCheckMark.png"),
                ),
              ),
            )),
        Positioned(
            top: 422,
            left: 31,
            right: 32,
            child: Container(
              width: 312,
              height: 81,
              child: Column(
                children: [
                  Text(
                    "Congrats!",
                    style: MyText.BentonSansBold.copyWith(
                        fontSize: 30, color: MyColors.LigthGreen),
                  ),
                  Text(
                    widget.Text,
                    style: MyText.BentonSansBold.copyWith(
                        fontSize: 23, color: MyColors.Black),
                  )
                ],
              ),
            )),
      ],
    );
  }
}
