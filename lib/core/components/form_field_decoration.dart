import 'package:flutter/material.dart';

class MyFormDecoration {
  static InputDecoration inputDecoration({String? hint, String? txt, OutlineInputBorder? border}){
    return InputDecoration(
      hintText: hint,
      labelText: txt,
      border: border,
      
    );
  }
}