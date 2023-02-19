import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Style/style.dart';

class MyTextField extends StatefulWidget {
  TextInputType textInputType;
  TextInputAction textInputAction;
  String hintText;
  bool secure;
  TextEditingController textEditingController;
  String icon;
  String? Function(String?)? validator;
  MyTextField(
      {required this.icon,
      required this.textInputType,
      required this.textInputAction,
      required this.hintText,
      required this.secure,
      required this.validator,
      required this.textEditingController});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: widget.textEditingController,
      cursorColor: MyColors.Black,
      keyboardType: widget.textInputType,
      obscureText: widget.secure,
      textInputAction: widget.textInputAction,
      style: MyText.BentonSansRegular,
      decoration: InputDecoration(
          prefixIcon: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      widget.icon,
                    ),
                    fit: BoxFit.scaleDown),
              )),
          fillColor: MyColors.White,
          filled: true,
          hintText: widget.hintText,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyColors.greyBorder, width: 0.5),
              borderRadius: BorderRadius.circular(15)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: MyColors.greyBorder, width: 0.5))),
    );
  }
}
