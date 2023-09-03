import 'package:flutter/material.dart';
import 'package:foundationapp/utils/dimensions.dart';
import 'package:foundationapp/widget/big_text.dart';
import 'package:foundationapp/widget/small_text.dart';

class DonateWidget extends StatelessWidget {
  final ImageProvider image;
  final String name;
  final String donateTime;
  final String donateMoney;
  final String richText1;
  final String richText2;
  final String cause;
  Color? colors;
  final IconData? icon;
  final IconData? icon1;

  DonateWidget({
    Key? key,
    required this.image,
    required this.name,
    required this.cause,
    required this.donateMoney,
    required this.donateTime,
    required this.richText1,
    required this.richText2,
    this.colors = Colors.brown,
    this.icon,
    this.icon1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.pageView - 40,
      width: Dimensions.screenWidth + 40,
      //color: Colors.redAccent,
      padding: EdgeInsets.only(
        top: Dimensions.height10,
        right: Dimensions.height10,
        left: Dimensions.height10,
        bottom: Dimensions.height10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            width: Dimensions.pageViewContainer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius30 * 5),
              image: DecorationImage(image: image, fit: BoxFit.fill),
            ),
          ),
          Container(
            //alignment: Alignment.topLeft,
            padding: EdgeInsets.only(
              left: Dimensions.height10,
              right: Dimensions.height10,
            ),
            height: Dimensions.pageViewContainer,
            width: Dimensions.pageViewTextContainer + 150,
            //color: Colors.redAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    //Icon(icon, color: Colors.red),

                    BigText(
                      text: name,
                      size: Dimensions.font26 + 4,
                      color: Colors.black,
                    ),

                    Icon(
                      icon,
                      color: Colors.red,
                      size: Dimensions.iconSize16 + 2,
                    ),
                    //Icon(icon1, color: Colors.red),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SmallText(
                        text: donateTime,
                        size: Dimensions.font20 + 2,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                      text: richText1,
                      style: TextStyle(
                        fontSize: Dimensions.font20 + 2,
                        color: Colors.teal,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: donateMoney,
                            style: TextStyle(
                              fontSize: Dimensions.font26 + 4,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            )),
                        TextSpan(
                          text: richText2,
                          style: TextStyle(
                            fontSize: Dimensions.font20 + 2,
                            color: Colors.teal,
                          ),
                        ),
                      ]),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Text(
                        cause,
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: Dimensions.font26 + 2,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius30),
          color: colors),
    );
  }
}
