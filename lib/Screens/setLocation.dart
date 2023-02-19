import 'package:final_project/Screens/signUpSuccess.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Style/style.dart';
import '../custWid/nextButton.dart';
import '../custWid/processHeader.dart';

class SetLocationScreen extends StatefulWidget {
  const SetLocationScreen({Key? key}) : super(key: key);

  @override
  State<SetLocationScreen> createState() => _SetLocationScreenState();
}

class _SetLocationScreenState extends State<SetLocationScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: MyColors.offWhiteBg,
      body: Stack(children: [
        MyProcessHeader(
            contWidth: 264,
            conHeight: 131,
            text1: "Set Your Location ",
            text2:
                "This data will be displayed in your account profile for security"),
        Positioned(
            top: 220,
            left: 17,
            right: 16,
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(22),
              child: Container(
                width: 342,
                height: 147,
                decoration: BoxDecoration(
                  color: MyColors.White,
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: MyColors.White),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 11),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: MyColors.Yellow,
                            child:
                                Icon(Icons.location_on, color: MyColors.Orange),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Text(
                            "Your Location",
                            style: MyText.BentonSansMedium.copyWith(
                                fontSize: 16, color: MyColors.Black),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 322,
                        height: 57,
                        decoration: BoxDecoration(
                            color: MyColors.ConGrey,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            "Set Location",
                            style: MyText.BentonSansBold.copyWith(fontSize: 14),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )),
        Positioned(
            top: 695,
            left: 109,
            right: 109,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpSuccess()),
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
