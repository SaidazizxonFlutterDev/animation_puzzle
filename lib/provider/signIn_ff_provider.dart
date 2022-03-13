import 'package:flutter/material.dart';

class VisibilityPasswordProvider extends ChangeNotifier {
  bool isObscure = true;
  void showOrNotShow(){
    isObscure = !isObscure;
    notifyListeners();
  } 
}