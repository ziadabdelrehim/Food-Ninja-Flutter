import 'package:final_project/custWid/patternStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Style/style.dart';

class NinjaHeader extends StatelessWidget {
  double TopPosition;
  NinjaHeader({required this.TopPosition});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      MyPattern(
        height: 812,
      ),
      Positioned(
          top: 49 + TopPosition,
          left: 104,
          child: Container(
              width: 175,
              height: 139,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Logo.png'),
                    fit: BoxFit.fitWidth),
              ))),
      Positioned(
          top: 186 + TopPosition,
          left: 94,
          child: Container(
              width: 190,
              height: 64,
              child: Column(children: [
                Positioned(
                    top: 0,
                    left: 94,
                    child: Text(
                      'FoodNinja',
                      textAlign: TextAlign.left,
                      style: MyText.Viga,
                    )),
                Positioned(
                    top: 48,
                    left: 13,
                    child: Text(
                      'Deliever Favorite Food',
                      textAlign: TextAlign.left,
                      style: MyText.Inter,
                    )),
              ]))),
    ]);
  }
}
