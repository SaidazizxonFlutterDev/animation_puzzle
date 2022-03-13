import 'package:flutter/material.dart';

class MyFormDecoration {
  static InputDecoration inputDecoration(
      {String? hint, String? txt, OutlineInputBorder? border, IconData? sIcon}) {
    return InputDecoration(
      hintText: hint,
      labelText: txt,
      border: border,
      suffixIcon: Icon(sIcon),
    );
  }
}
