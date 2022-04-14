import 'package:dealers_gear_cms/screens/add_vehicle_screen/add_vehicle_view.dart';
import 'package:dealers_gear_cms/screens/dashboard_screen/dashboard_view.dart';
import 'package:dealers_gear_cms/screens/leads_screen/leads_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../search_inventory_screen/searchInventory_view.dart';
class BottomNavigationController extends GetxController {
  var selectedIndex = 0.obs;
  RxString name = "".obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  getSelectedView() {
    print(selectedIndex.value);
    switch (selectedIndex.value) {
      case 0:
        return  DashboardView();
      case 1:
        return SearchInventoryView();
      case 2:
        return AddVehicleView();
      case 3:
        return LeadsView();

      default:
        return Container(
          color: Colors.red,
          height: 400,
          width: 200,
        );
    }
  }

  // logout() {
  //   GetStorage().remove("name");
  //   Get.off(() => LoginView());
  //   print('clicked');
  // }
}