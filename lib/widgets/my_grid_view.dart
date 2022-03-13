import 'package:animation_puzzle/core/constants/color_const.dart';
import 'package:animation_puzzle/core/constants/fontsize_const.dart';
import 'package:animation_puzzle/provider/grid_item_provider.dart';
import 'package:animation_puzzle/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyGridView extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List myList = context.watch<GridItemProvider>().myList;
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
            return myList[index] != 0
                ? GestureDetector(
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 600),
                      color: ColorConst.primary,
                      alignment: Alignment.center,
                      child: MyText(
                          txt: myList[index].toString(),
                          size: MyFontSize.normal,
                          color: Colors.white),
                    ),
                    onTap: () {
                      context.read<GridItemProvider>().clickBtn(context, index);
                    },
                  )
                : AnimatedContainer(
                    duration: const Duration(milliseconds: 600),
                    color: ColorConst.invisible,
                  );
          }),
    );
  }
}
