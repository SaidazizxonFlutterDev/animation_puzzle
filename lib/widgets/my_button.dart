import 'package:animation_puzzle/core/constants/color_const.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  List myList;
  MyButton({Key? key, required this.myList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _h = MediaQuery.of(context).size.height;
    double _w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: _h * 0.1, horizontal: _w * 0.03),
      child: ElevatedButton(
        onPressed: () {
          var a = myList[0];
          myList[0] = myList[1];
          myList[1] = a;
        },
        child: const Text("RESET"),
        style: ElevatedButton.styleFrom(
          primary: ColorConst.primary,
          padding: EdgeInsets.symmetric(
            vertical:_h * 0.02,
            horizontal: _w * 0.2,
          ),
        ),
      ),
    );
  }
}
