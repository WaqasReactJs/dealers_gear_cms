import 'package:dealers_gear_cms/screens/bottom_navigation/bottom_navigation_viewmodel.dart';
import 'package:dealers_gear_cms/screens/bottom_navigation/LeadsView .dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../leads_screen/leads_view.dart';
import '../profile_screen/profile_view.dart';
class BottomNavigationView extends StatelessWidget {
  BottomNavigationView({Key? key}) : super(key: key);
  BottomNavigationController bottomNavigationController =
  Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: dashboardAppbar(),
      body: Obx(() => Center(
        child: bottomNavigationController.getSelectedView(),
      )),
      bottomNavigationBar: bottomNotchedAppBar(),
      floatingActionButton: FloatingActionButton(
        //Floating action button on Scaffold
        backgroundColor: Colors.white,
        onPressed: () {
          //code to execute on button press
        },

        child: IconButton(
          icon: Icon(
            Icons.person,
            color: Colors.black26,
          ),
          onPressed: () {
            Get.to(ProfileView());
          },
        ), //icon inside button
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
  PreferredSizeWidget dashboardAppbar() {
    return AppBar(
      toolbarHeight: 70,
      flexibleSpace: Container(

        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xff2699D8), Color(0xff0DC7C6)]),
        ),
      ),
      title: InkWell(
        onTap: (){
          Get.to(()=>LeadsViewScreen());
        },
        child: SizedBox(
          height: 40,
          child: Image.asset("assets/images/logo_neww.png"),
        ),
      ),
      centerTitle: true,
      actions: [
        Container(
          height: 20,
          margin: EdgeInsets.all(10),
          decoration:
          BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.black26,
            ),
            onPressed: () {
                Get.to(()=>ProfileView());     },
          ),
        ),
      ],
    );
  }
  Widget bottomNotchedAppBar() {
    return BottomAppBar(
      color: Colors.white,
      shape: const CircularNotchedRectangle(),
      notchMargin: 5.0,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        height: 35,
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(
                        () => InkWell(
                      onTap: () =>
                      bottomNavigationController.selectedIndex.value = 0,
                      child: Icon(
                        Icons.home_outlined,
                        size: 40,
                        color:
                        (bottomNavigationController.selectedIndex.value == 0)
                            ? Color(0xff0ae7da)
                            : Color(0xffc5c5c5),
                        // color: (GlobalVariables.selectedIndex.value == 0)
                        //     ? Get.theme.primaryColor
                        //     : const Color(0xff9B9B9B),
                      ),
                    ),
                  ),
                  Obx(
                        () => InkWell(
                      onTap: () =>
                      bottomNavigationController.selectedIndex.value = 1,
                      child: Icon(
                        Icons.search,
                        size: 40,
                        color:
                        (bottomNavigationController.selectedIndex.value == 1)
                            ? Color(0xff0ae7da)
                            : Color(0xffc5c5c5),
                        // color: (GlobalVariables.selectedIndex.value == 1)
                        //     ? Get.theme.primaryColor
                        //     : const Color(0xff9B9B9B),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 0,
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(
                        () => InkWell(
                      onTap: () =>
                      bottomNavigationController.selectedIndex.value = 2,
                      child: Icon(
                        Icons.add_circle_outline,
                        size: 40,
                        color:
                        (bottomNavigationController.selectedIndex.value == 2)
                            ? Color(0xff0ae7da)
                            : Color(0xffc5c5c5),
                        // color: (GlobalVariables.selectedIndex.value == 3)
                        //     ? Get.theme.primaryColor
                        //     : const Color(0xff9B9B9B),
                      ),
                    ),
                  ),
                  Obx(
                        () => InkWell(
                      onTap: () =>
                      bottomNavigationController.selectedIndex.value = 3,
                      child: Icon(
                        Icons.add_alert,

                        size: 40,
                        color:
                        (bottomNavigationController.selectedIndex.value == 3)
                            ? Color(0xff0ae7da)
                            : Color(0xffc5c5c5),
                        // color: (GlobalVariables.selectedIndex.value == 3)
                        //     ? Get.theme.primaryColor
                        //     : const Color(0xff9B9B9B),
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
