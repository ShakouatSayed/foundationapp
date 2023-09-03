import 'package:flutter/material.dart';
import 'package:foundationapp/utils/dimensions.dart';
import 'package:foundationapp/widget/big_text.dart';
import 'package:foundationapp/widget/small_text.dart';

class PageIntro extends StatelessWidget {
  final String text;
  final String text1;
  const PageIntro({Key? key, required this.text, required this.text1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: Dimensions.height10, right: Dimensions.height10),
      height: Dimensions.height80 * 2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius30),
          color: Colors.white12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BigText(
            text: text,
            color: Colors.black,
            size: Dimensions.font26,
            textAlign: TextAlign.center,
          ),
          SmallText(
            text: text1,
            size: Dimensions.font16 + 3,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
