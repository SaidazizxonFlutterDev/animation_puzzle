import 'package:animation_puzzle/core/constants/color_const.dart';
import 'package:animation_puzzle/provider/grid_item_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyButton extends StatefulWidget {
  const MyButton({ Key? key }) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    double _h = MediaQuery.of(context).size.height;
    double _w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: _h * 0.1, horizontal: _w * 0.03),
      child: ElevatedButton(
        onPressed: () {
          context.read<GridItemProvider>().shuffleList();
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
