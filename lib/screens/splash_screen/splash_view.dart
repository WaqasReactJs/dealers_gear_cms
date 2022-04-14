import 'package:dealers_gear_cms/screens/splash_screen/splash_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  SplashView({Key? key}) : super(key: key);
  SplashViewModel splashViewModel = Get.put(SplashViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            RotationTransition(
              turns: Tween(begin: 0.0, end: 1.0)
                  .animate(splashViewModel.animationController),
              child: Image(
                width: Get.width * 0.7,
                image: AssetImage("assets/images/gear.png"),
              ),
            ),
            Image(
                width: Get.width * 0.15,
                image: AssetImage("assets/images/shifts.png")),
          ],
        ),
      ),
    );
  }
}
