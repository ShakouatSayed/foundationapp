import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:foundationapp/base/custom_app_bar.dart';
import 'package:foundationapp/controller/all_box/fundation_image_controller.dart';
import 'package:foundationapp/routes/app_route_helper.dart';
import 'package:foundationapp/utils/dimensions.dart';
import 'package:get/get.dart';

class GallaryPage extends StatelessWidget {
  const GallaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FoundationImageController foundationImageController = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: "Gallary",
        backButtomExist: true,
      ),
      body: Obx(() => SafeArea(
              child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
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
                        itemCount: foundationImageController.box.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Get.toNamed(AppRoutes.getFullImageView());
                            },
                            child: CachedNetworkImage(
                              imageUrl: foundationImageController
                                  .box[index].mainImageUrl!,
                              imageBuilder: (context, imageProvider) =>
                                  Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      Dimensions.radius20),
                                  color: Colors.greenAccent,
                                  image: DecorationImage(
                                      image: imageProvider, fit: BoxFit.cover),
                                ),
                                child: const CircularProgressIndicator(),
                              ),
                              errorWidget: (context, url, error) =>
                                  Image.asset(""),
                            ),
                          );

                          /*Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius20),
                                color: Colors.greenAccent,
                                image: DecorationImage(
                                    image:
                                    NetworkImage(
                                        foundationImageController
                                            .allGallaryImage[index]),

                                    fit: BoxFit.cover),
                              ),
                            ),

                          );*/
                        })),
              ),
            ],
          ))),
    );
  }
}
