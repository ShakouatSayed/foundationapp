import 'package:flutter/material.dart';
import 'package:foundationapp/config/themes/app_colors.dart';
import 'package:foundationapp/utils/dimensions.dart';

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
          decoration: BoxDecoration(gradient: mainGradientColorDark),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ScaleTransition(
                scale: animation,
                child: Center(
                  child: Image.asset(
                    "assets/images/logo.jpg",
                    //height: Dimensions.splashImg,
                    width: Dimensions.splashImg + 5,
                  ),
                ),
              ),
              Center(
                child: Image.asset("assets/images/panchakanyafundationlogo.png",
                    //height: Dimensions.splashImg,
                    width: Dimensions.splashImg),
              )
            ],
          ),
        ));
  }
}
