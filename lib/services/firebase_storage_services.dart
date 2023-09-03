import 'package:foundationapp/firebase_ref/refarence.dart';
import 'package:get/get.dart';

class FirebaseStorageService extends GetxService {
  Future<String?> getImage(String? imgName) async {
    if (imgName == null) {
      return null;
    }

    try {
      var urlRef = firebaseStorege
          .child("foundation_gallary_images")
          .child('${imgName.toLowerCase()}.jpg');
      var imgURL = await urlRef.getDownloadURL();
      return imgURL;
    } catch (e) {
      print(e);
      return null;
    }
    ;
  }
}
