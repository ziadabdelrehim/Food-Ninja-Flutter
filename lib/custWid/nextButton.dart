import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Style/style.dart';

class NextButton extends StatefulWidget {
  double height;
  double width;
  String buttonText;
  NextButton(
      {required this.height, required this.width, required this.buttonText});

  @override
  State<NextButton> createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          gradient: MyColors.buttonGradient,
        ),
        child: Center(
          child: Text(
            widget.buttonText,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: MyColors.White,
                fontFamily: 'BentonSans Bold',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 1.5),
          ),
        ));
  }
}
