import 'package:flutter/material.dart';
import 'package:foundationapp/utils/dimensions.dart';
import 'package:foundationapp/widget/donate_widget.dart';
import 'package:foundationapp/widget/last_part.dart';
import 'package:foundationapp/widget/page_intro.dart';

class DonateSimpleWidget extends StatelessWidget {
  final String fstBoxText1;
  final String fstBoxText2;
  DonateWidget donateWidget1;
  DonateWidget donateWidget2;
  DonateWidget donateWidget3;
  DonateSimpleWidget({
    Key? key,
    required this.fstBoxText1,
    required this.fstBoxText2,
    required this.donateWidget1,
    required this.donateWidget2,
    required this.donateWidget3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageIntro(
          text: fstBoxText1,
          text1: fstBoxText2,
        ),
        SizedBox(height: Dimensions.height10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: EdgeInsets.only(
              right: Dimensions.height10,
              left: Dimensions.height10,
            ),
            child: Row(
              children: [
                donateWidget1,
                SizedBox(width: Dimensions.height10),
                donateWidget2,
                SizedBox(width: Dimensions.height10),
                donateWidget3,
              ],
            ),
          ),
        ),
        SizedBox(height: Dimensions.height20),
        LastPart(),
        SizedBox(height: Dimensions.height10),
      ],
    );
  }
}
