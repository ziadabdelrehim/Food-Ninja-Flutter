import 'package:final_project/Screens/signUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Style/style.dart';
import '../custWid/getStart.dart';

class GetStartTwo extends StatefulWidget {
  const GetStartTwo({Key? key}) : super(key: key);

  @override
  State<GetStartTwo> createState() => _GetStartTwoState();
}

class _GetStartTwoState extends State<GetStartTwo> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: MyColors.White,
        body: MyGetStart(
          image: 'assets/images/Illustration2.png',
          title1: 'Food Ninja is Where Your Comfort Food Lives',
          title2: 'Enjoy a fast and smooth food delivery at your doorstep',
          onNextTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MySignUp()),
            );
          },
          textConWidth: 348,
          textConLefPos: 13,
        ));
  }
}
