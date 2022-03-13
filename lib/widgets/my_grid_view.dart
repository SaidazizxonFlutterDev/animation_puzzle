import 'package:animation_puzzle/core/constants/color_const.dart';
import 'package:animation_puzzle/core/constants/fontsize_const.dart';
import 'package:animation_puzzle/widgets/my_text.dart';
import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  List myList;
  MyGridView({Key? key, required this.myList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemCount: myList.length,
          itemBuilder: (context, index) {
            return myList[index] != "0"
                ? AnimatedContainer(
                    duration: const Duration(milliseconds: 600),
                    color: ColorConst.primary,
                    alignment: Alignment.center,
                    child: MyText(
                        txt: myList[index],
                        size: MyFontSize.normal,
                        color: Colors.white),
                  )
                : AnimatedContainer(
                    duration: const Duration(milliseconds: 600),
                    color: ColorConst.invisible,
                  );
          }),
    );
  }
}
