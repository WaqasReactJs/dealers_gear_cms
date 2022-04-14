import 'dart:async';

import 'package:dealers_gear_cms/screens/login_screen/login_view.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class SplashViewModel extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void onInit() {
    animationController = AnimationController(
      duration:const Duration(milliseconds: 5000),
      vsync: this,
    );
    animationController.repeat();
    super.onInit();
  }

  @override
  void onReady() {
    startTime();
  }

  @override
  void onClose() {
    animationController.dispose();
  }

  startTime() async {
    return new Timer(Duration(seconds: 3), loadNextScreen);
  }

  void loadNextScreen() {
    Get.to(() => LoginView());
  }
}
