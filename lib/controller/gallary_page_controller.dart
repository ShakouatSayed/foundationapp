import 'package:get/get.dart';
class GallaryPageController extends GetxController{
  @override
  void onReady(){
    initAuth();
    super.onReady();
  }
  void initAuth(){
    navigateToGalleryPage();
  }
  void navigateToGalleryPage(){
    Get.toNamed("/gallaryPage");
  }
}