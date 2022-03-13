import 'package:flutter/material.dart';

class GridItemProvider extends ChangeNotifier {
  List myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 10, 11, 12, 13, 14, 1];

  void clickBtn(int index) {
    if(index - 1 >= 0 && myList[index - 1] == 0 && index % 4 != 0 ||
    index + 1 < 16 && myList[index + 1] == 0 && (index + 1) % 4 != 0 ||
    (index - 4 >= 0 && myList[index - 4] == 0) ||
    index + 4 < 16 &&  myList[index + 4] == 0){
      myList[myList.indexOf(0)] = myList[index];
    myList[index] = 0;
    notifyListeners();
    }
  }
}