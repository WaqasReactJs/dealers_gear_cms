import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController{

  RxBool checkValue= false.obs;
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  late TextEditingController passwordController,emailController = TextEditingController();
  var email = "";
  var password = "";

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }@override
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

  String? validateEmail(String value){
    if(!GetUtils.isEmail(value)){
      return "Provide Valide Email";
    }
    return null;
  }
  String? validatePassword(String value){
    if(value.length<=6){
      return "Password must be of 6 Characters";
    }
    return null;
  }

  void checkLogin(){
    final isValid = loginFormKey.currentState!.validate();
    if(!isValid){
      return ;
    }
    loginFormKey.currentState!.save();
  }



}