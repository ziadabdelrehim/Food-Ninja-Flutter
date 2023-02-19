import 'package:final_project/Screens/paymentMethod.dart';
import 'package:final_project/Style/style.dart';
import 'package:final_project/custWid/backButton.dart';
import 'package:final_project/custWid/nextButton.dart';
import 'package:final_project/custWid/patternStyle.dart';
import 'package:final_project/custWid/processHeader.dart';
import 'package:final_project/custWid/textFieldBlanc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:form_field_validator/form_field_validator.dart';

class FillBio extends StatefulWidget {
  const FillBio({Key? key}) : super(key: key);

  @override
  State<FillBio> createState() => _FillBioState();
}

class _FillBioState extends State<FillBio> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController MobileController = TextEditingController();

  final firstNameValidator =
      RequiredValidator(errorText: "First Name is required");
  final LastNameValidator =
      RequiredValidator(errorText: "Last Name is required");
  final mobilePhoneValidator =
      RequiredValidator(errorText: "Mobile Number is required");

  final formKey = GlobalKey<FormState>();

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
            text1: "Fill in your bio to get started",
            text2:
                "This data will be displayed in your account profile for security"),
        Positioned(
            top: 252,
            left: 14,
            right: 14,
            child: Form(
              key: formKey,
              child: Container(
                width: 347,
                height: 323,
                child: Column(
                  children: [
                    BlankTextField(
                      onChange: (p0) {},
                      validator: firstNameValidator,
                      hintText: "First Name",
                      secure: false,
                      textInputType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      textEditingController: firstNameController,
                      myTextStyle: MyText.BentonSansRegular,
                      BorderRadius: 15,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    BlankTextField(
                        onChange: (p0) {},
                        validator: LastNameValidator,
                        hintText: "Last Name",
                        secure: false,
                        textEditingController: lastNameController,
                        textInputAction: TextInputAction.next,
                        textInputType: TextInputType.name,
                        myTextStyle: MyText.BentonSansRegular,
                        BorderRadius: 15),
                    SizedBox(
                      height: 20,
                    ),
                    BlankTextField(
                      onChange: (p0) {},
                      validator: mobilePhoneValidator,
                      hintText: "Mobile Number",
                      secure: false,
                      textEditingController: MobileController,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.phone,
                      myTextStyle: MyText.BentonSansRegular,
                      BorderRadius: 15,
                    )
                  ],
                ),
              ),
            )),
        Positioned(
            top: 695,
            left: 109,
            right: 109,
            child: InkWell(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyPaymentMethod()),
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
