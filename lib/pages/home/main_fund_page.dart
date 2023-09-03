import 'package:flutter/material.dart';
import 'package:foundationapp/config/themes/app_colors.dart';
import 'package:foundationapp/pages/home/fund_page_body.dart';
import 'package:foundationapp/utils/colors.dart';
import 'package:foundationapp/utils/dimensions.dart';
import 'package:foundationapp/widget/big_text.dart';
import 'package:foundationapp/widget/small_text.dart';

class MainFundationPage extends StatefulWidget {
  const MainFundationPage({Key? key}) : super(key: key);

  @override
  State<MainFundationPage> createState() => _MainFundationPageState();
}

class _MainFundationPageState extends State<MainFundationPage> {
  @override
  Widget build(BuildContext context) {
    //print("current height is "+MediaQuery.of(context).size.width.toString());
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(gradient: mainGradientColorDark),
              //color: Colors.redAccent,
              margin: EdgeInsets.only(
                top: Dimensions.height45,
                bottom: Dimensions.height15,
              ),
              padding: EdgeInsets.only(
                  left: Dimensions.height20, right: Dimensions.height20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "Panchakanya Fundation",
                        color: AppColors.mainColor,
                      ),
                      Row(
                        children: [
                          SmallText(
                              text: "Help People, This is Aim",
                              color: Colors.black),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      height: Dimensions.height45,
                      width: Dimensions.height45,
                      child: Icon(
                        Icons.foundation_rounded,
                        color: Colors.white,
                        size: Dimensions.iconSize24,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: FundPageBody(),
            ))
          ],
        ));
  }
}
