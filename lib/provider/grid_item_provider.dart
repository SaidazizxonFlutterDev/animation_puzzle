import 'package:animation_puzzle/provider/move_counter_provider.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GridItemProvider extends ChangeNotifier {
  List myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 0];

  void clickBtn(BuildContext context, int index,) {
    if (index - 1 >= 0 && myList[index - 1] == 0 && index % 4 != 0 ||
        index + 1 < 16 && myList[index + 1] == 0 && (index + 1) % 4 != 0 ||
        (index - 4 >= 0 && myList[index - 4] == 0) ||
        index + 4 < 16 && myList[index + 4] == 0) {
      myList[myList.indexOf(0)] = myList[index];
      myList[index] = 0;
      context.read<MoveCounterProvider>().incMove();
      winCheck(context);
      notifyListeners();
    }
  }

  bool isSorted(List list) {
    int prev = list.first;
    for (var i = 1; i < list.length - 1; i++) {
      int next = list[i];
      if (prev > next) {
        return false;
      }
      prev = next;
    }
    return true;
  }

  void winCheck(BuildContext context) {
    if (isSorted(myList)) {
      debugPrint("Biz yutDIkkkkkkkk");
       AwesomeDialog(
        context: context,
        dialogType: DialogType.SUCCES,
        animType: AnimType.BOTTOMSLIDE,
        title: 'WINNER WINNER, CHICKEN DINNER !',     
        btnOkOnPress: () {
          myList.shuffle();
          context.read<MoveCounterProvider>().setMove = 0;
        },
      ).show();
    }
  }

  void shuffleList(){
    myList.shuffle();
    notifyListeners();
  }

  get getList => myList;
}
