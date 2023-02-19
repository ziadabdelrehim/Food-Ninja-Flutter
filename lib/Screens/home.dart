import 'package:final_project/Style/style.dart';
import 'package:final_project/custWid/homeHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.White,
      body: Stack(children: [
        HomeHeader(
            conHeight: 230,
            conWidth: MediaQuery.of(context).size.width,
            text1: "Find Your\nFavorite Food")
      ]),
    );
  }
}
