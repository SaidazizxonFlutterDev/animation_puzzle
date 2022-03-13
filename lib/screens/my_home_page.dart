import 'dart:async';

import 'package:animation_puzzle/core/constants/color_const.dart';
import 'package:animation_puzzle/core/constants/fontsize_const.dart';
import 'package:animation_puzzle/provider/move_counter_provider.dart';
import 'package:animation_puzzle/widgets/my_button.dart';
import 'package:animation_puzzle/widgets/my_grid_view.dart';
import 'package:animation_puzzle/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Timer? timer;
  int time = 0;

  @override
  void initState() {
    super.initState();
    
  }

  startTimer(){
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      time++;
      debugPrint(time.toString());
    });
  }


  @override
  Widget build(BuildContext context) {
    double _h = MediaQuery.of(context).size.height;
    int move = context.watch<MoveCounterProvider>().getMove;
    if(move > 0){
      startTimer();
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorConst.invisible,
        elevation: 0,
        title: MyText(
          txt: "Puzzle is Here !",
          size: MyFontSize.normal,
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: _h * 0.05, bottom: _h * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyText(txt: 'Move: $move', size: MyFontSize.normal),
                  MyText(txt: 'Time: $time', size: MyFontSize.normal),
                ],
              ),
            ),
            Expanded(
              child: MyGridView(),
            ),
            const MyButton(),
          ],
        ),
      ),
    );
  }
}
