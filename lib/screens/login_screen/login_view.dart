import 'package:dealers_gear_cms/screens/bottom_navigation/bottom_navigation_view.dart';
import 'package:dealers_gear_cms/screens/login_screen/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../dashboard_screen/dashboard_view.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  LoginViewModel loginViewModel = Get.put(LoginViewModel());
  bool checkvalue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/login_bg.png"),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/logo_neww.png"),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.10,
              ),
              Form(
                key: loginViewModel.loginFormKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    TextFormField(
                     keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(15),
                          // add padding to adjust icon
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color(0xff29D2C8),
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(Icons.email),
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                        controller: loginViewModel.emailController,
                        onSaved: (value){
                          loginViewModel.email = value!;
                        },
                      validator: (value){
                        return loginViewModel.validateEmail(value!);
                      }

                    ),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    TextFormField(
                      //controller: emailController,
                      //focusNode:myFocusNode,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(15),
                          // add padding to adjust icon
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color(0xff29D2C8),
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(Icons.lock),
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                        controller: loginViewModel.passwordController,
                        onSaved: (value){
                          loginViewModel.password = value!;
                        },
                        validator: (value){
                          return loginViewModel.validatePassword(value!);
                        }

                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    Row(
                      children: [
                        Obx(
                          () => Checkbox(
                            checkColor: Colors.black,
                            side: BorderSide(color: Color(0xffffffff)),
                            activeColor: Colors.white,
                            value: loginViewModel.checkValue.value,
                            onChanged: (var val) {
                              loginViewModel.checkValue.value = val!;
                            },
                          ),
                        ),
                        Text(
                          'Remember me',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(BottomNavigationView());
                        loginViewModel.checkLogin();
                      },
                      child: Container(
                        width: Get.width,
                        height: Get.height * 0.07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xff2699D8), Color(0xff0DC7C6)]),
                        ),
                        child: Center(
                            child: Text(
                          "LOGIN",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        )),
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
