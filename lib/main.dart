import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foundationapp/data_uploder_screen.dart';
import 'package:foundationapp/firebase_options.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(GetMaterialApp(home: DataUploadScreen()));
}
