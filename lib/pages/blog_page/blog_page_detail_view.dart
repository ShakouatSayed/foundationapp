import 'package:flutter/material.dart';
import 'package:foundationapp/base/custom_app_bar.dart';
import 'package:foundationapp/routes/app_route_helper.dart';
import 'package:foundationapp/utils/dimensions.dart';
import 'package:foundationapp/widget/app_column.dart';
import 'package:foundationapp/widget/app_icon.dart';
import 'package:foundationapp/widget/big_text.dart';
import 'package:foundationapp/widget/expandable_text_widget.dart';
import 'package:get/get.dart';

class BlogPageDetailPage extends StatefulWidget {
  const BlogPageDetailPage({Key? key}) : super(key: key);

  @override
  State<BlogPageDetailPage> createState() => _BlogPageDetailPageState();
}

class _BlogPageDetailPageState extends State<BlogPageDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Blog Details",
        backButtomExist: false,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                height: Dimensions.popularFundImgSize,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/event-2.jpg")),
                ),
              )),
          Positioned(
              left: Dimensions.height10,
              right: Dimensions.height10,
              top: Dimensions.height10,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.offNamed(AppRoutes.getHomePage());
                    },
                    child: AppIcon(icon: Icons.clear),
                  ),
                ],
              )),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFundImgSize - 20,
              child: Container(
                padding: EdgeInsets.only(
                  left: Dimensions.height10,
                  right: Dimensions.height10,
                  top: Dimensions.height10,
                  bottom: Dimensions.height10,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20)),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppColumn(text: "Clean water for Flood Affected People"),
                    SizedBox(height: Dimensions.height10),
                    BigText(text: "Introduce", size: Dimensions.font26),
                    SizedBox(height: Dimensions.height10),
                    Expanded(
                      child: SingleChildScrollView(
                        child: ExpandableTextWidget(
                          text: "I love Application Developer."
                              "I love Application Developer."
                              "I love Application Developer."
                              "I love Application Developer."
                              " love Application Developer."
                              " love Application Developer."
                              " love Application Developer."
                              " love Application Developer."
                              " love Application Developer."
                              " I love Application Developer"
                              "I love Application Developer"
                              " I love Application Developer",
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
