import 'package:final_project/Screens/setLocation.dart';
import 'package:final_project/Style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../custWid/nextButton.dart';
import '../custWid/processHeader.dart';

class PhotoPreview extends StatefulWidget {
  const PhotoPreview({Key? key}) : super(key: key);

  @override
  State<PhotoPreview> createState() => _PhotoPreviewState();
}

class _PhotoPreviewState extends State<PhotoPreview> {
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
            text1: "Upload Your Photo Profile",
            text2:
                "This data will be displayed in your account profile for security"),
        Positioned(
            top: 276,
            left: 62,
            right: 62,
            child: Container(
                width: 245,
                height: 238,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  image: DecorationImage(
                      image: AssetImage("assets/images/ProfilePicture.png"),
                      fit: BoxFit.fitWidth),
                ))),
        Positioned(
            top: 695,
            left: 109,
            right: 109,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SetLocationScreen()),
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
