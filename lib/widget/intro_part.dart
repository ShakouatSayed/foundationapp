import 'package:flutter/material.dart';
import 'package:foundationapp/utils/dimensions.dart';
import 'package:foundationapp/widget/big_text.dart';

class IntroPage extends StatelessWidget {
  final ImageProvider image;
  final String text;
  final String text1;
  IntroPage(
      {Key? key, required this.image, required this.text, required this.text1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.pageView,
      width: Dimensions.screenWidth,
      margin: EdgeInsets.only(
          top: Dimensions.height10,
          left: Dimensions.height10,
          right: Dimensions.height10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius20),
          color: Colors.lime,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: image,
          )),
      child: Container(
        //margin: EdgeInsets.only(top: Dimensions.height45 * 1.2),
        child: Padding(
          padding: EdgeInsets.only(
              left: Dimensions.height10, right: Dimensions.height10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BigText(
                text: text,
                color: Colors.white,
                size: Dimensions.font26,
                textAlign: TextAlign.center,
              ),
              BigText(
                text: text1,
                size: Dimensions.font20,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
