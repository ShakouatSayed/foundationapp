import 'package:flutter/material.dart';
import 'package:foundationapp/routes/app_route_helper.dart';
import 'package:foundationapp/utils/dimensions.dart';
import 'package:foundationapp/widget/big_text.dart';
import 'package:foundationapp/widget/simple_box.dart';
import 'package:get/get.dart';

class HomeBox2 extends StatelessWidget {
  final String servText1;
  final String servText2;
  final String servText3;
  final String donText1;
  final String donText2;
  final String donText3;
  final String becText1;
  final String becText2;
  final String becText3;
  double size;
  HomeBox2(
      {Key? key,
      required this.servText1,
      required this.servText2,
      required this.servText3,
      required this.donText3,
      required this.donText2,
      required this.donText1,
      required this.becText3,
      required this.becText1,
      required this.becText2,
      this.size = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              SimpleBox(
                smBoxText1: servText1,
                smBoxText2: servText2,
                smBoxText3: servText3,
              ),
              Container(
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
                      text: donText1,
                      color: Colors.black,
                      textAlign: TextAlign.center,
                      size: Dimensions.font20 + 2,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: Dimensions.height10,
                          right: Dimensions.height10),
                      child: BigText(
                          text: donText2,
                          color: Colors.black,
                          size: Dimensions.font16),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.getDonatePage());
                      },
                      child: Container(
                        width: Dimensions.screenWidth / 3,
                        height: Dimensions.screenHeight / 20,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius30),
                          color: Colors.lightGreen,
                        ),
                        child: Center(
                          child: BigText(
                            text: donText3,
                            size: Dimensions.font26 - 2,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SimpleBox(
                smBoxText1: becText1,
                smBoxText2: becText2,
                smBoxText3: becText3,
                size: Dimensions.font20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
