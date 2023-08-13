import 'package:flutter/material.dart';
import 'package:foundationapp/base/custom_app_bar.dart';
import 'package:foundationapp/utils/dimensions.dart';
import 'package:foundationapp/widget/big_text.dart';
import 'package:foundationapp/widget/donate_simple_widget.dart';
import 'package:foundationapp/widget/donate_widget.dart';
import 'package:foundationapp/widget/intro_part.dart';
import 'package:foundationapp/widget/small_text.dart';
import 'package:get/get.dart';

class DonatePage extends StatefulWidget {
  const DonatePage({Key? key}) : super(key: key);

  @override
  State<DonatePage> createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Donate",
        onBackPressed: () {
          Get.back();
        },
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                  margin: EdgeInsets.only(
                    top: Dimensions.height10 / 2,
                    right: Dimensions.height10 / 2,
                    left: Dimensions.height10 / 2,
                    bottom: Dimensions.height20,
                  ),
                  child: Column(
                    children: [
                      IntroPage(
                          image: AssetImage("assets/images/beg4.jpg"),
                          text1:
                              "By the grace of Allah these people donate zakat for the Peoples",
                          text: "Donation"),
                      SizedBox(height: Dimensions.height20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText(
                            text: "BKash Number.",
                            size: Dimensions.font26 + 10,
                          ),
                          SmallText(
                            text: "+880 1608-694048",
                            size: Dimensions.font20 + 10,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      SizedBox(height: Dimensions.height10 / 2),
                      DonateSimpleWidget(
                        fstBoxText1: "Latest Donation",
                        fstBoxText2:
                            "By the grace of Allah these people donate Foundation for the Peoples",
                        donateWidget1: DonateWidget(
                            image: AssetImage("assets/images/image-10.jpg"),
                            name: "Zarin Rosni",
                            donateTime: "Donated Just now",
                            richText1: "Donated",
                            donateMoney: " \$1000 ",
                            cause: "People Need Foods",
                            richText2: "For",
                            colors: Colors.blueGrey),
                        donateWidget2: DonateWidget(
                          image: AssetImage(
                              "assets/images/p-Abdullah-Al-Matin.jpg"),
                          name: "Abdullah Al Matin",
                          donateTime: "Donated Three days ago",
                          richText1: "Donated",
                          donateMoney: " \$512 ",
                          richText2: "For",
                          cause: "People Needs Clothes",
                        ),
                        donateWidget3: DonateWidget(
                            image:
                                AssetImage("assets/images/p-Sharif-Uddin.jpg"),
                            name: "Sharif Uddin",
                            donateTime: "Donated One days ago",
                            richText1: "Donated",
                            donateMoney: " \$527 ",
                            richText2: "For",
                            cause: "People Need Medicines",
                            colors: Colors.lightGreen),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
