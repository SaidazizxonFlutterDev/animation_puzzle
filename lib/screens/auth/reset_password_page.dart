import 'package:animation_puzzle/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:animation_puzzle/core/constants/fontsize_const.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: MyText(txt: "Reset Password page", size: MyFontSize.normal),),
    );
  }
}