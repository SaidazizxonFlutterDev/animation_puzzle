import 'package:animation_puzzle/core/constants/fontsize_const.dart';
import 'package:animation_puzzle/core/constants/fontweight_const.dart';
import 'package:animation_puzzle/widgets/my_button.dart';
import 'package:animation_puzzle/widgets/my_grid_view.dart';
import 'package:animation_puzzle/widgets/my_text.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> myList = [
    "0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"];

  @override
  Widget build(BuildContext context) {
    double _h = MediaQuery.of(context).size.height;
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: _h * 0.05, bottom: _h * 0.1),
              child: MyText(
                txt: "PUZZLE IS HERE",
                size: MyFontSize.doubleExtraLarge,
                weight: FontWeightConst.bold,
              ),
            ),
            Expanded(
              child: MyGridView(myList: myList),
            ),
            MyButton(myList: myList),
          ],
        ),
      ),
    );
  }
}
