import 'package:flutter/material.dart';
import 'package:get/get.dart';
class AddVehicleViewModel extends GetxController{
  // It is mandatory initialize with one value from listType
  final selected = "Mohsin".obs;

  void setSelected(var value){
    selected.value = value;
  }
  List<String> list =["Mohsin","Hayat","Salman","Waqas"];


}