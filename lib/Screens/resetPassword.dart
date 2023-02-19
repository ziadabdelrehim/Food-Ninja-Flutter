import 'package:final_project/Screens/resetPasswordSuccess.dart';
import 'package:final_project/Style/style.dart';
import 'package:final_project/custWid/textFieldBlanc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../custWid/nextButton.dart';
import '../custWid/processHeader.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController newPassController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'Password is required'),
    MinLengthValidator(8, errorText: 'Password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'Passwords must have at least one special character')
  ]);
  String password = "";
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: MyColors.White,
      body: Form(
        key: formKey,
        child: Stack(children: <Widget>[
          MyProcessHeader(
              contWidth: 264,
              conHeight: 131,
              text1: "Reset your password here",
              text2:
                  "Select which contact details should we use to reset your password"),
          Positioned(
              top: 263,
              left: 14,
              right: 14,
              child: BlankTextField(
                  onChange: (p0) {},
                  validator: passwordValidator,
                  hintText: "New Password",
                  secure: true,
                  textEditingController: newPassController,
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.name,
                  myTextStyle: MyText.BentonSansRegular,
                  BorderRadius: 22)),
          Positioned(
              top: 344,
              left: 14,
              right: 14,
              child: BlankTextField(
                  onChange: (p0) {},
                  validator: passwordValidator,
                  hintText: "Confirm Password",
                  secure: true,
                  textEditingController: confirmPassController,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.name,
                  myTextStyle: MyText.BentonSansRegular,
                  BorderRadius: 22)),
          Positioned(
              top: 695,
              left: 109,
              right: 109,
              child: InkWell(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    if (newPassController.text != confirmPassController.text) {
                      Fluttertoast.showToast(
                          msg: "Please match the Passowrd",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: MyColors.LigthGreen,
                          textColor: MyColors.GreyText);
                    } else {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => ResetSuccess()),
                      );
                    }
                  }
                },
                child: NextButton(
                  buttonText: "Next",
                  height: 57,
                  width: 157,
                ),
              ))
        ]),
      ),
    );
  }
}
