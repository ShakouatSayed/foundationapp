import 'package:flutter/material.dart';
import 'package:foundationapp/utils/dimensions.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  TextOverflow overflow;
  TextAlign textAlign;
  double size;

  BigText(
      {Key? key,
      this.color = Colors.green,
      this.overflow = TextOverflow.ellipsis,
      this.textAlign = TextAlign.center,
      this.size = 0,
      required this.text
      //required this.color,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 15,
      overflow: overflow,
      textAlign: textAlign,
      style: TextStyle(
          fontFamily: 'Roboto',
          color: color,
          fontSize: size == 0 ? Dimensions.font20 : size,
          fontWeight: FontWeight.w400),
    );
  }
}
