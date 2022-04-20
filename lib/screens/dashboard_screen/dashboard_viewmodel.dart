import 'dart:developer';

import 'package:dealers_gear_cms/helper/api_base_helpher.dart';
import 'package:dealers_gear_cms/screens/dashboard_screen/dashboard_model.dart';
import 'package:get/get.dart';

import '../../helper/urls.dart';

class DashboardViewModel extends GetxController {
  Rx<DashBoardModel> dashboardModel = DashBoardModel().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    getCarsCount();
  }

  getCarsCount() {
    log('----------------------------------------------------------------------------');
    Map<String, dynamic> params = {"inventory_status": "active"};
    ApiBaseHelpher()
        .post(url: Urls.vehicleCount, body: params)
        .then((parsedJSON) {
      try {
        print(parsedJSON);
        dashboardModel.value = DashBoardModel.fromJson(parsedJSON);
      } catch (e) {
        print(e);
      }
    });
  }
}
