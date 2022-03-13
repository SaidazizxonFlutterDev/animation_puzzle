import 'package:animation_puzzle/core/components/form_field_decoration.dart';
import 'package:animation_puzzle/core/constants/my_form_border.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:animation_puzzle/provider/signin_ff_provider.dart';

// ignore: must_be_immutable
class MyFormField extends StatelessWidget {
  bool isEmail;
  MyFormField({Key? key, required this.isEmail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool proObs = context.watch<VisibilityPasswordProvider>().isObscure;
    List myList = [
      {
        'hint': "Type your email...",
        'txt': "Email",
        'icon': Icons.email,
        'obscure': false
      },
      {
        'hint': "Type your password...",
        'txt': "Password",
        'icon': proObs ? Icons.visibility_off : Icons.visibility,
        'obscure': proObs,
      },
    ];
    Map myMap = isEmail ? myList[0] : myList[1];
    return Stack(
      children: [
        TextFormField(
          obscureText: myMap['obscure'],
          decoration: MyFormDecoration.inputDecoration(
            hint: myMap['hint'],
            txt: myMap['txt'],
            sIcon: isEmail ? myMap['icon'] : null,
            border: MyFormBorderConst.normal,
          ),
        ),
        Positioned(
          right: 1,
          bottom: 1,
          top: 1,
          child: isEmail ? const Text("") : IconButton(
            onPressed: () {
              context.read<VisibilityPasswordProvider>().showOrNotShow();
            },
            icon: Icon(myMap['icon'], color: Colors.grey.shade600,),
          ),
        ),
      ],
    );
  }
}
