import 'package:flutter/material.dart';
import 'package:foundationapp/base/custom_app_bar.dart';
import 'package:foundationapp/utils/colors.dart';
import 'package:foundationapp/utils/dimensions.dart';
import 'package:foundationapp/widget/app_icon.dart';
import 'package:foundationapp/widget/big_text.dart';
import 'package:foundationapp/widget/expandable_text_widget.dart';
import 'package:get/get.dart';

class PageDetailsView extends StatefulWidget {
  const PageDetailsView({Key? key}) : super(key: key);

  @override
  State<PageDetailsView> createState() => _PageDetailsViewState();
}

class _PageDetailsViewState extends State<PageDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Event Details",
        backButtomExist: false,
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: Dimensions.height80 - 10,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(Dimensions.height20),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height10 / 2,
                    bottom: Dimensions.height10 / 2),
                child: BigText(
                  text: "Flood In Bangladesh",
                  textAlign: TextAlign.center,
                  size: Dimensions.font20,
                ),
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20))),
              ),
            ),
            title: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: AppIcon(
                icon: Icons.clear,
                iconColour: Colors.white,
                iconSize: Dimensions.iconSize16,
                backgraoundColour: Colors.grey,
              ),
            ),
            automaticallyImplyLeading: false,
            pinned: true,
            expandedHeight: Dimensions.popularFundImgSize - 10,
            backgroundColor: AppColors.mainColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/images/eventtwo.jpg",
                  width: double.maxFinite, fit: BoxFit.fill),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                child: ExpandableTextWidget(
                  text: "I love Application Developer."
                      "I love Application Developer."
                      "I love Application Developer."
                      "I love Application Developer."
                      "I love Application Developer.I love Application Developer.I love Application Developer.I love Application Develop"
                      "er.I love Application Developer.I love Application D"
                      "eveloper.I love Application Developer.I love Application Developer.I love Application Developer.I love Applic"
                      "ation Developer.I love App"
                      "lication Developer.I love Application Develope"
                      "r.I love Application Developer.I love Application Developer.I love Application "
                      "Developer.I love Application Developer.I love Application Developer.I love Application Developer.I"
                      " love Application Deve"
                      "loper.I love Application Developer"
                      ".I love Application Developer.I love Ap"
                      "plication Developer.I love Application De"
                      "veloper.I love Application Developer.I love Application Developer.I love Application Developer.I love Application Developer.I love Application Developer.I love Application D"
                      "eveloper.I love Application Developer.I love Application Developer.I love Application Developer.I love Application Developer.I love Application Developer.I love "
                      "Application Developer.I love Applicatio"
                      "n Developer.I love Application Developer.I"
                      " love Application Developer.I love Applicat oper.I love Application Developer.I love Application Developer.I love Application oper.I love Application Developer.I love Application Developer.I love Application oper.I love Application Developer.I love Application Developer.I love Application oper.I love Application Developer.I love Application Developer.I love Application oper.I love Application Developer.I love Application Developer.I love Application oper.I love Application Developer.I love Application Developer.I love Application oper.I love Application Developer.I love Application Developer.I love Application oper.I love Application Developer.I love Application Developer.I love Application "
                      "ion Developer.",
                ),
                margin: EdgeInsets.only(
                    top: Dimensions.height20,
                    right: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.height20),
              )
            ],
          )),
        ],
      ),
    );
  }
}
