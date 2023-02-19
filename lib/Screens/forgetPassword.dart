import 'package:final_project/Screens/verificationCode.dart';
import 'package:final_project/Style/style.dart';
import 'package:final_project/custWid/resetPassMethod.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../custWid/nextButton.dart';
import '../custWid/processHeader.dart';

class ForgetPassword extends StatefulWidget {
  String email;
  ForgetPassword({required this.email});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: MyColors.White,
      body: Stack(children: <Widget>[
        MyProcessHeader(
            contWidth: 264,
            conHeight: 131,
            text1: "Forgot password?",
            text2:
                "Select which contact details should we use to reset your password"),
        Positioned(
            top: 220,
            left: 14,
            right: 14,
            child: PassMethod(
              conHeight: 105,
              conWidth: 347,
              image: "assets/images/MessageIcon.png",
              text1: "Via sms:",
              text2: "**** **** 4235",
              letteringSpace: 7,
            )),
        Positioned(
            top: 345,
            left: 14,
            right: 14,
            child: PassMethod(
              conHeight: 105,
              conWidth: 347,
              image: "assets/images/EmailIcon2.png",
              text1: "Via email:",
              text2: widget.email,
              letteringSpace: 0,
            )),
        Positioned(
            top: 695,
            left: 109,
            right: 109,
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Verification()),
                );
              },
              child: NextButton(
                buttonText: "Next",
                height: 57,
                width: 157,
              ),
            ))
      ]),
    );
  }
}
