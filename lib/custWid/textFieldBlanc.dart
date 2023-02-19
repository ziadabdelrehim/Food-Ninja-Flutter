import 'package:flutter/material.dart';

import '../Style/style.dart';

class BlankTextField extends StatefulWidget {
  TextInputType textInputType;
  TextInputAction textInputAction;
  String hintText;
  bool secure;
  TextEditingController textEditingController;
  double BorderRadius;

  TextStyle myTextStyle;
  String? Function(String?)? validator;
  Function(String)? onChange;

  BlankTextField(
      {required this.hintText,
      required this.secure,
      required this.onChange,
      required this.textEditingController,
      required this.textInputAction,
      required this.textInputType,
      required this.myTextStyle,
      required this.BorderRadius,
      required this.validator});

  @override
  State<BlankTextField> createState() => _BlankTextFieldState();
}

class _BlankTextFieldState extends State<BlankTextField> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      shadowColor: MyColors.textFieldShadow,
      borderRadius: BorderRadius.circular(15),
      child: TextFormField(
        validator: widget.validator,
        onChanged: widget.onChange,
        controller: widget.textEditingController,
        cursorColor: MyColors.Black,
        keyboardType: widget.textInputType,
        obscureText: widget.secure,
        textInputAction: widget.textInputAction,
        style: widget.myTextStyle,
        decoration: InputDecoration(
            fillColor: MyColors.White,
            filled: true,
            hintText: widget.hintText,
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: MyColors.textFieldShadow, width: 1),
                borderRadius: BorderRadius.circular(widget.BorderRadius)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.BorderRadius),
                borderSide:
                    BorderSide(color: MyColors.textFieldShadow, width: 1))),
      ),
    );
  }
}
