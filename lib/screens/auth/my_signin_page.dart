import 'package:animation_puzzle/core/constants/color_const.dart';
import 'package:animation_puzzle/core/constants/fontweight_const.dart';
import 'package:animation_puzzle/widgets/my_form_field.dart';
import 'package:animation_puzzle/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:animation_puzzle/core/constants/fontsize_const.dart';

class MySingInPage extends StatelessWidget {
  const MySingInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    double _h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(_h * 0.04),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: _h * 0.15),
                  child: Row(
                    children: [
                      MyText(
                          txt: "Hello.\nWelcome",
                          size: MyFontSize.doubleExtraLarge,
                          weight: FontWeightConst.bold),
                    ],
                  ),
                ),
                Form(
                  child: Column(
                    children: [
                      MyFormField(isEmail: true),
                      SizedBox(height: _h * 0.05),
                      MyFormField(isEmail: false),
                      SizedBox(height: _h * .02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: MyText(
                              txt: "Forgot Password?",
                              size: MyFontSize.small,
                              color: ColorConst.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: _h * .02),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: MyText(
                              txt: "LOG IN",
                              size: MyFontSize.normal,
                              weight: FontWeightConst.thin,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
