import 'package:flutter/material.dart';
import 'package:foundationapp/base/custom_app_bar.dart';
import 'package:foundationapp/routes/app_route_helper.dart';
import 'package:foundationapp/utils/dimensions.dart';
import 'package:foundationapp/widget/big_text.dart';
import 'package:foundationapp/widget/intro_part.dart';
import 'package:get/get.dart';

class EventPageBody extends StatefulWidget {
  const EventPageBody({Key? key}) : super(key: key);

  @override
  State<EventPageBody> createState() => _EventPageBodyState();
}

class _EventPageBodyState extends State<EventPageBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: "Our Events", backButtomExist: true),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Column(
              children: [
                IntroPage(
                  image: AssetImage("assets/images/begthree.jpg"),
                  text: "Event",
                  text1: "Flood Relief / Food Security including nutrition for "
                      "children and lactating mothers / Shelter and Tents / "
                      "Health Support / Livestock support including vaccination /"
                      " Water and sanitation.",
                ),
                SizedBox(height: Dimensions.height10),

                //event blog page
                Container(
                  margin: EdgeInsets.only(
                    left: Dimensions.height10 / 1.1,
                    //right: 8
                  ),
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      //scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.getEventPageDetail());
                          },
                          child: Row(
                            children: [
                              Container(
                                height: Dimensions.pageViewContainer,
                                width: Dimensions.pageViewTextContainer * 1.83,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft:
                                          Radius.circular(Dimensions.radius30),
                                      bottomLeft:
                                          Radius.circular(Dimensions.radius30)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/eventtwo.jpg"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Container(
                                //alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(
                                  top: Dimensions.height10 / 2,
                                  bottom: Dimensions.height10 / 2,
                                ),
                                height: Dimensions.pageViewContainer,
                                width: Dimensions.pageViewTextContainer * 2.257,
                                //color: Colors.redAccent,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight:
                                          Radius.circular(Dimensions.radius30),
                                      bottomRight:
                                          Radius.circular(Dimensions.radius30),
                                    ),
                                    color: Colors.grey),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: Dimensions.height10,
                                      right: Dimensions.height10,
                                      left: Dimensions.height10,
                                      bottom: Dimensions.height10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      BigText(
                                        text:
                                            "Tital: Clean water for Flood Affected People",
                                        size: Dimensions.font20,
                                        color: Colors.black,
                                      ),
                                      BigText(
                                          text: "Date: 31-07-2023",
                                          size: Dimensions.font20,
                                          color: Colors.black),
                                      BigText(
                                          text: "Time: 10:00AM - 05:00PM",
                                          size: Dimensions.font20,
                                          color: Colors.black),
                                      BigText(
                                          text: "Place: Chakaria",
                                          size: Dimensions.font20,
                                          color: Colors.black),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          )),
    );
  }
}
