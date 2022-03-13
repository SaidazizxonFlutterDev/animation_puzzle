import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyText extends StatelessWidget {
  String txt;
  double size;
  Color? color;
  FontWeight? weight;
  TextOverflow? overflow;
  MyText({Key? key, required this.txt, required this.size, this.color, this.weight, this.overflow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight,
        overflow: overflow,
      ),
    );
  }
}
