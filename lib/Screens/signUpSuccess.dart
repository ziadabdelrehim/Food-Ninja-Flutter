import 'package:final_project/Screens/home.dart';
import 'package:final_project/Style/style.dart';

import 'package:final_project/custWid/successProcess.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../custWid/nextButton.dart';

class SignUpSuccess extends StatefulWidget {
  const SignUpSuccess({Key? key}) : super(key: key);

  @override
  State<SignUpSuccess> createState() => _SignUpSuccessState();
}

class _SignUpSuccessState extends State<SignUpSuccess> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: MyColors.White,
      body: Stack(children: [
        sucessProcess(Text: "Your Profile Is Ready To Use"),
        Positioned(
            top: 695,
            left: 109,
            right: 109,
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MyHome()),
                );
              },
              child: NextButton(
                buttonText: "Try Order",
                height: 57,
                width: 157,
              ),
            ))
      ]),
    );
  }
}
