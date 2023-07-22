import 'package:flutter/material.dart';
import 'package:foundationapp/controller/all_box/data_upload.dart';

import 'package:foundationapp/firebase_ref/loading_status.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class DataUploadScreen extends StatelessWidget {
  DataUploadScreen({super.key});
  DataUpload controller = Get.put(DataUpload());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() => Text(
            controller.loadingStatus.value == LoadingStatus.completed
                ? "Uploading Complecated"
                : "Uploading....")),
      ),
    );
  }
}
