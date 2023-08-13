import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foundationapp/bindings/intial_bindings.dart';
import 'package:foundationapp/data_uploder_screen.dart';
import 'package:foundationapp/firebase_options.dart';
import 'package:foundationapp/routes/app_route_helper.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  InitialBindings().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.routes(),
    );
  }
}




// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(GetMaterialApp(home: DataUploadScreen()));
// }

