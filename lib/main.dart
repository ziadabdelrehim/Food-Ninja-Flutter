import 'package:final_project/Screens/forgetPassword.dart';
import 'package:final_project/Screens/getStartone.dart';
import 'package:final_project/Screens/home.dart';
import 'package:final_project/Screens/paymentMethod.dart';
import 'package:final_project/Screens/resetPassword.dart';
import 'package:final_project/Screens/signIn.dart';
import 'package:final_project/Screens/signUp.dart';
import 'package:final_project/Screens/signUpProcess.dart';
import 'package:final_project/Screens/signUpSuccess.dart';
import 'package:final_project/Screens/splash.dart';
import 'package:final_project/Screens/uploadPhoto.dart';
import 'package:final_project/Screens/uploadPreview.dart';
import 'package:final_project/Screens/verificationCode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Final Project',
      home: MySplash(),
    );
  }
}
