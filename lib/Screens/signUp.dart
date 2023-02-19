import 'package:final_project/Screens/signIn.dart';
import 'package:final_project/Screens/signUpProcess.dart';
import 'package:final_project/Style/style.dart';
import 'package:final_project/custWid/header.dart';
import 'package:final_project/custWid/nextButton.dart';
import 'package:final_project/custWid/textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';

class MySignUp extends StatefulWidget {
  const MySignUp({Key? key}) : super(key: key);

  @override
  State<MySignUp> createState() => _MySignUpState();
}

class _MySignUpState extends State<MySignUp> {
  TextEditingController NameEditingController = TextEditingController();
  TextEditingController EmailEditingController = TextEditingController();
  TextEditingController PasswordEditingController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'Password is required'),
    MinLengthValidator(8, errorText: 'Password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'Passwords must have at least one special character')
  ]);

  final emailValidator = MultiValidator([
    RequiredValidator(errorText: 'Email is required'),
    EmailValidator(errorText: "Entar a valid email address")
  ]);

  final NameValidator = RequiredValidator(errorText: "Name is required");

  bool keepSign = false;
  bool mailMe = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
        backgroundColor: MyColors.White,
        body: Stack(children: [
          NinjaHeader(TopPosition: 0),
          Positioned(
              top: 282,
              left: 110,
              child: Text(
                'Sign Up For Free ',
                textAlign: TextAlign.center,
                style: MyText.BentonSansBold,
              )),
          Positioned(
            top: 331,
            left: 25,
            child: Container(
              width: 325,
              height: 245,
              child: Form(
                key: formKey,
                child: Column(children: [
                  MyTextField(
                      validator: NameValidator,
                      icon: "assets/images/ProfileIcon.png",
                      textInputType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      hintText: "Anamwp . . |",
                      secure: false,
                      textEditingController: NameEditingController),
                  SizedBox(
                    height: 12,
                  ),
                  MyTextField(
                      validator: emailValidator,
                      icon: "assets/images/EmailIcon.png",
                      textInputType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      hintText: "Email",
                      secure: false,
                      textEditingController: EmailEditingController),
                  SizedBox(
                    height: 12,
                  ),
                  MyTextField(
                      validator: passwordValidator,
                      icon: "assets/images/PasswordIcon.png",
                      textInputType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      hintText: "Password",
                      secure: true,
                      textEditingController: PasswordEditingController)
                ]),
              ),
            ),
          ),
          Positioned(
              top: 595,
              left: 25,
              child: Container(
                  width: 200,
                  height: 56,
                  child: Column(children: [
                    Row(children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            keepSign = !keepSign;
                          });
                        },
                        child: CircleAvatar(
                          radius: 10,
                          child: Container(
                              decoration: BoxDecoration(
                                  gradient: MyColors.buttonGradient,
                                  shape: BoxShape.circle),
                              child: keepSign
                                  ? Icon(
                                      Icons.check,
                                      color: MyColors.White,
                                      size: 20,
                                    )
                                  : Container()),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Keep Me Signed In',
                          textAlign: TextAlign.center,
                          style: MyText.BentonSansBook),
                    ]),
                    SizedBox(
                      height: 12,
                    ),
                    Row(children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            mailMe = !mailMe;
                          });
                        },
                        child: CircleAvatar(
                          radius: 10,
                          child: Container(
                              decoration: BoxDecoration(
                                  gradient: MyColors.buttonGradient,
                                  shape: BoxShape.circle),
                              child: mailMe
                                  ? Icon(
                                      Icons.check,
                                      color: MyColors.White,
                                      size: 20,
                                    )
                                  : Container()),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Email Me About Special Pricing',
                        textAlign: TextAlign.center,
                        style: MyText.BentonSansBook,
                      ),
                    ])
                  ]))),
          Positioned(
              top: 685,
              left: 110,
              child: InkWell(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FillBio()),
                    );
                  }
                },
                child: NextButton(
                  buttonText: "Create Account",
                  height: 57,
                  width: 175,
                ),
              )),
          Positioned(
              top: 750,
              left: 70,
              child: Container(
                  width: 261,
                  height: 476,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MySignIn()),
                      );
                    },
                    child: Text(
                      'already have an account?',
                      textAlign: TextAlign.center,
                      style: MyText.BentonSansMedium.copyWith(
                          decoration: TextDecoration.underline),
                    ),
                  ))),
        ]));
  }
}
