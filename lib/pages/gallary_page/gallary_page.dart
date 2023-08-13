import 'package:flutter/material.dart';
import 'package:foundationapp/base/custom_app_bar.dart';
import 'package:foundationapp/pages/gallary_page/full_image_view.dart';
import 'package:foundationapp/routes/app_route_helper.dart';
import 'package:foundationapp/utils/dimensions.dart';
import 'package:get/get.dart';

class GallaryPage extends StatefulWidget {
  const GallaryPage({Key? key}) : super(key: key);

  @override
  State<GallaryPage> createState() => _GallaryPageState();
}

class _GallaryPageState extends State<GallaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: "Gallary",
        backButtomExist: true,
      ),
      body: SafeArea(
          child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              //height: Dimensions.screenWidth * 1.1,
              // margin: EdgeInsets.only(
              //   top: Dimensions.height10,
              //   left: Dimensions.height10,
              //   right: Dimensions.height10,
              //   bottom: Dimensions.height10
              //   ),
              padding: EdgeInsets.only(
                  top: Dimensions.height10 / 2,
                  left: Dimensions.height10,
                  right: Dimensions.height10,
                  bottom: Dimensions.height10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                //color: Colors.greenAccent,
              ),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 13,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.getFullImageView());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius20),
                          color: Colors.greenAccent,
                          image: DecorationImage(
                              image: AssetImage("assets/images/event-2.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      )),
    );
  }
}
