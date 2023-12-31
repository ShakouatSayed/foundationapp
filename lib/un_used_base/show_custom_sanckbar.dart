import 'package:flutter/material.dart';
import 'package:foundationapp/widget/big_text.dart';
import 'package:get/get.dart';
void showCustomSanckBar(String message, {bool isError = true, String title = "Error"}){
  Get.snackbar(title, message,
    titleText: BigText(text: title, color: Colors.white),
    messageText: Text(message, style: const TextStyle(
      color: Colors.white,
    ),
    ),
    colorText: Colors.white,
    snackPosition: SnackPosition.TOP,
    backgroundColor: Colors.redAccent,
  );
}