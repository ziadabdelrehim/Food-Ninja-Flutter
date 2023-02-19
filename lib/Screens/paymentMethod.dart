import 'package:final_project/Screens/uploadPhoto.dart';
import 'package:final_project/Style/style.dart';
import 'package:final_project/custWid/paymentType.dart';
import 'package:final_project/custWid/processHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../custWid/nextButton.dart';

class MyPaymentMethod extends StatefulWidget {
  const MyPaymentMethod({Key? key}) : super(key: key);

  @override
  State<MyPaymentMethod> createState() => _MyPaymentMethodState();
}

class _MyPaymentMethodState extends State<MyPaymentMethod> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: MyColors.offWhiteBg,
      body: Stack(children: [
        MyProcessHeader(
            contWidth: 264,
            conHeight: 97,
            text1: "Payment Method",
            text2:
                "This data will be displayed in your account profile for security"),
        Positioned(
            top: 220,
            left: 20,
            right: 20,
            child: Container(
              width: 335,
              height: 256,
              child: Column(children: [
                MyMethod(
                    image: "assets/images/paypal.png",
                    conHeight: 73,
                    conWidth: 335),
                SizedBox(
                  height: 17,
                ),
                MyMethod(
                  image: "assets/images/Visa.png",
                  conHeight: 73,
                  conWidth: 335,
                ),
                SizedBox(
                  height: 17,
                ),
                MyMethod(
                  image: "assets/images/Payoneer.png",
                  conHeight: 73,
                  conWidth: 335,
                )
              ]),
            )),
        Positioned(
            top: 695,
            left: 109,
            right: 109,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UploadPhoto()),
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
