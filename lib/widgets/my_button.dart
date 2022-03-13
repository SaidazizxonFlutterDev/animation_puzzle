import 'package:animation_puzzle/core/constants/color_const.dart';
import 'package:animation_puzzle/provider/grid_item_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyButton extends StatelessWidget {
  const MyButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _h = MediaQuery.of(context).size.height;
    double _w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: _h * 0.1, horizontal: _w * 0.03),
      child: ElevatedButton(
        onPressed: () {
          
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
