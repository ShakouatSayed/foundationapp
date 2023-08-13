import 'package:flutter/material.dart';
import 'package:foundationapp/utils/dimensions.dart';
import 'package:foundationapp/widget/big_text.dart';

class SimpleBox extends StatelessWidget {
  final String smBoxText1;
  final String smBoxText2;
  final String smBoxText3;
  double size;
  SimpleBox({
    Key? key,
    required this.smBoxText1,
    required this.smBoxText2,
    required this.smBoxText3,
    this.size = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      height: Dimensions.pageViewContainer,
      width: Dimensions.width30 * 10,
      margin: EdgeInsets.only(left: Dimensions.height10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius30),
        color: Colors.redAccent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BigText(
              text: smBoxText1,
              color: Colors.black,
              size: Dimensions.font20 + 2,
              textAlign: TextAlign.center),
          Padding(
            padding: EdgeInsets.only(
                left: Dimensions.height10, right: Dimensions.height10),
            child: BigText(
                text: smBoxText2, color: Colors.black, size: Dimensions.font16),
          ),
          Center(
            child: BigText(
              text: smBoxText3,
              size: Dimensions.font26 - 2,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
