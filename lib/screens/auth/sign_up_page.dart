import 'package:animation_puzzle/core/constants/fontsize_const.dart';
import 'package:animation_puzzle/widgets/my_text.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: MyText(txt: "Sign In Page", size: MyFontSize.normal,),),
    );
  }
}