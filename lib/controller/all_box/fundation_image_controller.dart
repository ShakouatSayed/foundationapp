import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foundationapp/firebase_ref/refarence.dart';
import 'package:foundationapp/models/about_page_box.dart';
import 'package:foundationapp/services/firebase_storage_services.dart';
import 'package:get/get.dart';

class FoundationImageController extends GetxController {
  final allGallaryImage = <String>[].obs;
  final box = <AboutPageBox>[].obs;

  @override
  void onReady() {
    getAllImages();
    super.onReady();
  }

  Future<void> getAllImages() async {
    List<String> imgName = [
      "begone",
      "begtwo",
      "begfive",
      "begfour",
      "begseven",
      "begsix",
      "begthree",
      "eventeight",
      "eventfive",
      "eventfour",
      "eventnine",
      "eventseven",
    ];

    try {
      QuerySnapshot<Map<String, dynamic>> data = await aboutPageBoxRF.get();

      final boxList =
          data.docs.map((box) => AboutPageBox.fromSnapshot(box)).toList();

      box.assignAll(boxList);

      for (var box in boxList) {
        final imgURL =
            await Get.find<FirebaseStorageService>().getImage(box.text);
        box.mainImageUrl = imgURL;
      }
      /*final imgURL = await Get.find<FirebaseStorageService>().getImage("begone");
      allGallaryImage.add(imgURL!);*/

      box.assignAll(boxList);
      // for (var img in imgName) {
      //   final imgURL = await Get.find<FirebaseStorageService>().getImage(img);
      //   allGallaryImage.add(imgURL!);
      // }
    } catch (e) {
      print(e);
    }
  }
}
