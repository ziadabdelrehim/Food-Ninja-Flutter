import 'package:final_project/Screens/uploadPreview.dart';
import 'package:final_project/Style/style.dart';
import 'package:final_project/custWid/paymentType.dart';
import 'package:final_project/custWid/photoMethod.dart';
import 'package:final_project/custWid/processHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../custWid/nextButton.dart';

class UploadPhoto extends StatefulWidget {
  const UploadPhoto({Key? key}) : super(key: key);

  @override
  State<UploadPhoto> createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhoto> {
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
            top: 252,
            right: 25,
            left: 25,
            child: PhotoMethod(
              image: "assets/images/Gallery.png",
              text: "From Gallery",
            )),
        Positioned(
            top: 401,
            left: 25,
            right: 25,
            child: PhotoMethod(
              image: "assets/images/camera.png",
              text: "Take Photo",
            )),
        Positioned(
            top: 695,
            left: 109,
            right: 109,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhotoPreview()),
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
