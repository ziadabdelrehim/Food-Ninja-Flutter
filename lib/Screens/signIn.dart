import 'package:final_project/Screens/forgetPassword.dart';
import 'package:final_project/Screens/home.dart';
import 'package:final_project/Screens/verificationCode.dart';
import 'package:final_project/Style/style.dart';
import 'package:final_project/custWid/header.dart';
import 'package:final_project/custWid/nextButton.dart';
import 'package:final_project/custWid/socialButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../custWid/textField.dart';

class MySignIn extends StatefulWidget {
  const MySignIn({Key? key}) : super(key: key);

  @override
  State<MySignIn> createState() => _MySignInState();
}

class _MySignInState extends State<MySignIn> {
  TextEditingController EmailEditingController = TextEditingController();
  TextEditingController PasswordEditingController = TextEditingController();
  final EmailKey = GlobalKey<FormState>();
  final PassKey = GlobalKey<FormState>();

  final passwordValidator =
      RequiredValidator(errorText: 'Password is required');

  final emailValidator = MultiValidator([
    RequiredValidator(errorText: 'Email is required'),
    EmailValidator(errorText: "Entar a valid email address")
  ]);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
        backgroundColor: MyColors.White,
        body: Stack(
          children: <Widget>[
            NinjaHeader(TopPosition: 0),
            Positioned(
                top: 277,
                left: 79,
                child: Text(
                  'Login To Your Account',
                  textAlign: TextAlign.center,
                  style: MyText.BentonSansBold,
                )),
            Positioned(
                top: 376,
                left: 25,
                child: Container(
                  width: 325,
                  height: 140,
                  child: Column(children: [
                    Form(
                      key: EmailKey,
                      child: MyTextField(
                          validator: emailValidator,
                          icon: "assets/images/EmailIcon.png",
                          textInputType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          hintText: "Email",
                          secure: false,
                          textEditingController: EmailEditingController),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Form(
                      key: PassKey,
                      child: MyTextField(
                          validator: passwordValidator,
                          icon: "assets/images/PasswordIcon.png",
                          textInputType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          hintText: "Password",
                          secure: true,
                          textEditingController: PasswordEditingController),
                    )
                  ]),
                )),
            Positioned(
                top: 522,
                left: 25,
                right: 25,
                child: Container(
                  width: 325,
                  height: 95,
                  child: Column(children: [
                    Text("Or Continue With",
                        style: MyText.BentonSansBold.copyWith(
                            color: MyColors.Black, fontSize: 12)),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SocialButton(
                            icon: "assets/images/facebook.png",
                            text: "Facebook"),
                        SizedBox(
                          width: 21,
                        ),
                        SocialButton(
                            icon: "assets/images/google.png", text: "Google")
                      ],
                    )
                  ]),
                )),
            Positioned(
                top: 639,
                left: 123,
                child: InkWell(
                  onTap: () {
                    if (EmailKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgetPassword(
                                  email: EmailEditingController.text,
                                )),
                      );
                    }
                  },
                  child: Text(
                    'Forgot Your Password?',
                    textAlign: TextAlign.center,
                    style: MyText.BentonSansMedium.copyWith(
                        decoration: TextDecoration.underline),
                  ),
                )),
            Positioned(
                top: 695,
                left: 117,
                right: 117,
                child: InkWell(
                  onTap: () {
                    if (EmailKey.currentState!.validate() &&
                        PassKey.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyHome()));
                    }
                  },
                  child: NextButton(
                    buttonText: "Login",
                    height: 57,
                    width: 141,
                  ),
                ))
          ],
        ));
  }
}
