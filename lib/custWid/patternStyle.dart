import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyPattern extends StatelessWidget {
  double height;
  MyPattern({required this.height});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 0,
        left: 0,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: this.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Pattern.png'),
                fit: BoxFit.fitWidth),
          ),
        ));
  }
}
