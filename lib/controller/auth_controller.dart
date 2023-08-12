import 'package:get/get.dart';

class AuthController extends GetxController{
  @override
  void onReady(){
    initAuth();
    super.onReady();
  }
  void initAuth() async{
    await Future.delayed(const Duration(seconds: 2));
    navigateToMainFundPage();
  }

  void navigateToMainFundPage(){
    Get.offNamed("/initial");
}
}