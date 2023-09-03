import 'package:flutter/material.dart';
import 'package:foundationapp/controller/all_box/fundation_image_controller.dart';
import 'package:foundationapp/widget/app_icon.dart';
import 'package:get/get.dart';

import '../../utils/dimensions.dart';

class FullImageView extends StatelessWidget {
  const FullImageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FoundationImageController foundationImageController = Get.find();
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                //color: Colors.redAccent,
                margin: EdgeInsets.only(
                  top: Dimensions.height45,
                  bottom: Dimensions.height15,
                ),
                padding: EdgeInsets.only(
                    left: Dimensions.height20, right: Dimensions.height20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: AppIcon(
                          icon: Icons.clear,
                          iconColour: Colors.white,
                          iconSize: Dimensions.iconSize16,
                          backgraoundColour: Colors.blueGrey,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                //height: Dimensions.height350,
                //width: Dimensions.pageView,
                margin: EdgeInsets.only(
                    top: Dimensions.height10,
                    left: Dimensions.height10,
                    right: Dimensions.height10,
                    bottom: Dimensions.height80),
                padding: EdgeInsets.only(
                    top: Dimensions.height10,
                    left: Dimensions.height10,
                    right: Dimensions.height10,
                    bottom: Dimensions.height80),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/eventtwo.jpg"),
                    )),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
