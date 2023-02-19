import 'package:final_project/Screens/resetPassword.dart';
import 'package:final_project/Screens/uploadPreview.dart';
import 'package:final_project/Style/style.dart';
import 'package:final_project/custWid/textFieldBlanc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../custWid/nextButton.dart';
import '../custWid/processHeader.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

TextEditingController codeController = TextEditingController();
final codeValidator =
    RequiredValidator(errorText: "Verification code is required");
final formKey = GlobalKey<FormState>();

class _VerificationState extends State<Verification> {
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
            text1: "Enter 4-digit\nVerification code",
            text2:
                "Code send to +6282045**** . This code will expired in 01:30"),
        Positioned(
          top: 270,
          left: 14,
          right: 14,
          child: Form(
            key: formKey,
            child: BlankTextField(
                validator: codeValidator,
                onChange: (p0) {},
                hintText: "1234",
                secure: false,
                textEditingController: codeController,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.number,
                myTextStyle: MyText.BentonSansBold.copyWith(
                    letterSpacing: 60, fontSize: 30),
                BorderRadius: 22),
          ),
        ),
        Positioned(
            top: 695,
            left: 109,
            right: 109,
            child: InkWell(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => ResetPassword()),
                  );
                }
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
