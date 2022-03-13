import 'package:flutter/material.dart';

class MoveCounterProvider extends ChangeNotifier {
  int _move = 0;

  void incMove(){
    _move++;
    notifyListeners();
  }

  get getMove => _move;
  set setMove(v) => _move = v;
}