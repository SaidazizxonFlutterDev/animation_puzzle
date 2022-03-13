// ignore: file_names
import 'package:flutter/cupertino.dart';

class VisibilityPasswordProvider extends ChangeNotifier {
  bool isObscure = true;
  void showOrNotShow(){
    isObscure = !isObscure;
    notifyListeners();
  } 
}