import 'dart:async';
import 'package:foundationapp/routes/app_route_helper.dart';
import 'package:foundationapp/utils/dimensions.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..forward();
    animation = CurvedAnimation(parent: controller, curve: Curves.linear);
    //Timer(const Duration(seconds: 3), ()=>Get.offNamed(RouteHelper.getInitial()))
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: animation,
              child: Center(
                child: Image.asset(
                  "assets/images/panchakanya_fundation_logo_1.jpg",
                  //height: Dimensions.splashImg,
                  width: Dimensions.splashImg,
                ),
              ),
            ),
            Center(
              child: Image.asset("assets/images/panchakanya_fundation_logo_2.jpg",
                  //height: Dimensions.splashImg,
                  width: Dimensions.splashImg),
            )
          ],
        ),
      )
    );
  }
}
