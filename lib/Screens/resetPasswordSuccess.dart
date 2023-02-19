import 'package:final_project/Screens/signIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Style/style.dart';
import '../custWid/nextButton.dart';
import '../custWid/successProcess.dart';

class ResetSuccess extends StatefulWidget {
  const ResetSuccess({Key? key}) : super(key: key);

  @override
  State<ResetSuccess> createState() => _ResetSuccessState();
}

class _ResetSuccessState extends State<ResetSuccess> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: MyColors.White,
      body: Stack(children: [
        sucessProcess(Text: "Password reset succesful"),
        Positioned(
            top: 695,
            left: 109,
            right: 109,
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MySignIn()),
                );
              },
              child: NextButton(
                buttonText: "Back",
                height: 57,
                width: 157,
              ),
            ))
      ]),
    );
  }
}
