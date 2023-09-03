import 'package:foundationapp/controller/all_box/fundation_image_controller.dart';
import 'package:foundationapp/controller/auth_controller.dart';
import 'package:foundationapp/controller/theme_controller.dart';
import 'package:foundationapp/services/firebase_storage_services.dart';
import 'package:get/get.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthController(), permanent: true);
    Get.put(ThemeController());
    Get.lazyPut(() => FirebaseStorageService());
    Get.put(FoundationImageController(), permanent: true);
  }
}
