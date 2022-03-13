import 'package:animation_puzzle/core/components/form_field_decoration.dart';
import 'package:animation_puzzle/core/constants/my_form_border.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Center(
        child: TextFormField(
          decoration: MyFormDecoration.inputDecoration(
            hint: "type smth...",
            border: MyFormBorderConst.normal,
          ),
        ),
      ),
    );
  }
}
