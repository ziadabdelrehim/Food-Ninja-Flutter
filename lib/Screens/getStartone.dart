import 'package:final_project/Screens/getStartTwo.dart';
import 'package:final_project/Style/style.dart';
import 'package:final_project/custWid/getStart.dart';
import 'package:final_project/custWid/nextButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GetStartOne extends StatefulWidget {
  const GetStartOne({Key? key}) : super(key: key);

  @override
  State<GetStartOne> createState() => _GetStartOneState();
}

class _GetStartOneState extends State<GetStartOne> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
        backgroundColor: MyColors.White,
        body: MyGetStart(
          image: 'assets/images/Illustartion1.png',
          title1: 'Find your  Comfort\nFood here',
          title2:
              'Here You Can find a chef or dish for every taste and color. Enjoy!',
          onNextTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => GetStartTwo()),
            );
          },
          textConWidth: 244,
          textConLefPos: 66,
        ));
  }
}
