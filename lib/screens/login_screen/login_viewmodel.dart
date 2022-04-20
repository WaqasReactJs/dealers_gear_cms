import 'package:dealers_gear_cms/helper/api_base_helpher.dart';
import 'package:dealers_gear_cms/helper/getx_helper.dart';
import 'package:dealers_gear_cms/screens/bottom_navigation/bottom_navigation_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../helper/urls.dart';

class LoginViewModel extends GetxController {
  RxBool checkValue = false.obs;
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  late TextEditingController passwordController,
      emailController = TextEditingController();
  var email = "";
  var password = "";

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    emailController.dispose();
    passwordController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide Valide Email";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 5) {
      return "Password must be of 5 Characters";
    }
    return null;
  }

  void checkLogin() async {
    if (loginFormKey.currentState!.validate()) {
      Map<String, dynamic> params = {
        "email": emailController.text,
        "password": passwordController.text,
      };

      ApiBaseHelpher().post(url: Urls.login, body: params).then((parsedJSON) {
        try {
          if (parsedJSON["success"] == true) {

            GetxHelper.showSnackBar1(
                title: "Success", message: "Logged in");
            //success
             String name = parsedJSON["user"]["first_name"];
             print(name);
             String token = parsedJSON["access_token"];
             print(token);

             GetStorage().write("name", name);
             GetStorage().write("token", "Bearer $token");
             //print(token);
             Get.offAll(() => BottomNavigationView());
          } else {
            GetxHelper.showSnackBar1(
                title: "Error", message: parsedJSON["error"]);
          }
        } catch (e) {
          print(e);
        }
      });
    }
  }
}
