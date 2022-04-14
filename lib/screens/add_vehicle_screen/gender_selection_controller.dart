import 'package:get/get.dart';
class GenderSelctionController extends GetxController{
  var selectedGender = "".obs;

  onChangedGender(var gender){
    selectedGender.value = gender;
  }
}