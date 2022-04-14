import 'package:dealers_gear_cms/screens/add_vehicle_screen/add_vehicle_viewmodel.dart';
import 'package:dealers_gear_cms/screens/add_vehicle_screen/gender_selection_controller.dart';
import 'package:dealers_gear_cms/screens/add_vehicle_screen/year_controller.dart';
import 'package:dealers_gear_cms/screens/common/common_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AddVehicleView extends StatelessWidget {
  AddVehicleView({Key? key}) : super(key: key);
  YearController yearController = Get.put(YearController());
  GenderSelctionController genderSelctionController =
      Get.put(GenderSelctionController());
  AddVehicleViewModel addVehicleViewModel = Get.put(AddVehicleViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              txtfieldContainer(),
              SizedBox(
                height: 10,
              ),
              twoButtonInRow(),
              SizedBox(
                height: 10,
              ),
              pickImageContainer(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Factory",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              formContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget txtfieldContainer() {
    return Container(
      child: TextFormField(
        //controller: emailController,
        //focusNode:myFocusNode,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "VIN Number",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: new BorderSide(color: Colors.white),
            borderRadius: new BorderRadius.circular(50),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: new BorderSide(color: Color(0xff0DC7C6)),
            borderRadius: new BorderRadius.circular(50),
          ),
        ),

        validator: (value) {
          if (value!.isEmpty) {
            return "Please provide your email";
          }
        },
        onChanged: (String value) {
          //  yourEmail = value;
        },
      ),
    );
  }

  Widget twoButtonInRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: Get.width * 0.45,
          height: Get.height * 0.05,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 1.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 2.0), // shadow direction: bottom right
              )
            ],
            borderRadius: BorderRadius.all(Radius.circular(50)),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xff2699D8), Color(0xff0DC7C6)]),
          ),
          child: Center(
              child: Text(
            "Decode Vin",
            style: TextStyle(color: Colors.white, fontSize: 18),
          )),
        ),
        Container(
          width: Get.width * 0.45,
          height: Get.height * 0.05,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 1.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 2.0), // shadow direction: bottom right
              )
            ],
            borderRadius: BorderRadius.all(Radius.circular(50)),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xff2699D8), Color(0xff0DC7C6)]),
          ),
          child: Center(
              child: Text(
            "Scan Vin",
            style: TextStyle(color: Colors.white, fontSize: 18),
          )),
        ),
      ],
    );
  }

  Widget pickImageContainer() {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 1.0,
            spreadRadius: 0.0,
            offset: Offset(
              2.0,
              2.0,
            ), // shadow direction: bottom right
          )
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.camera_alt_outlined,
              size: 50,
              color: Color(CommonColor.rightColor),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Add Image",
              style: TextStyle(
                color: Color(CommonColor.rightColor),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget formContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //ist row of form year and make with two dropdown
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "YEAR",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Obx(() => DropdownButtonFormField(
                            isExpanded: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                            hint: Text(
                              'Book Type',
                            ),
                            onChanged: (newValue) {
                              addVehicleViewModel.setSelected(newValue);
                            },
                            value: addVehicleViewModel.selected.value,
                            items: addVehicleViewModel.list.map((selectedType) {
                              return DropdownMenuItem(
                                child: new Text(
                                  selectedType,
                                ),
                                value: selectedType,
                              );
                            }).toList(),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Make",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Obx(() => DropdownButtonFormField(
                            isExpanded: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                            hint: Text(
                              'Book Type',
                            ),
                            onChanged: (newValue) {
                              addVehicleViewModel.setSelected(newValue);
                            },
                            value: addVehicleViewModel.selected.value,
                            items: addVehicleViewModel.list.map((selectedType) {
                              return DropdownMenuItem(
                                child: new Text(
                                  selectedType,
                                ),
                                value: selectedType,
                              );
                            }).toList(),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        //second row of form model field and trim field
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: "Model"),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: "TRIM"),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        //Car details
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Car Details",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        //third row of form MILEAGE field and MPG HIGHWAY
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: "MILEAGE"),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: "MPG HIGHWAY"),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        //fourth row of form MPG CITY  field and DISPLACEMENT field
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: "MPG CITY"),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: "DISPLACEMENT"),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        //fifth row of form DOORS  field and CYLINDERS field
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: "DOORS"),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: "CYLINDERS"),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        //Transmission text
        Row(
          children: [
            Text(
              "TRANSMISSION",
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        //below tansmission dropdown
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(50)),
          child: Obx(() => DropdownButtonFormField(
                isExpanded: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
                hint: Text(
                  'Book Type',
                ),
                onChanged: (newValue) {
                  addVehicleViewModel.setSelected(newValue);
                },
                value: addVehicleViewModel.selected.value,
                items: addVehicleViewModel.list.map((selectedType) {
                  return DropdownMenuItem(
                    child: new Text(
                      selectedType,
                    ),
                    value: selectedType,
                  );
                }).toList(),
              )),
        ),
        SizedBox(
          height: 15,
        ),
        //car type text
        Row(
          children: [
            Text(
              "Car Type",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        //FUEL TYPE txt and dropdown and BODY STYLE txt and dropdown
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "FUEL TYPE",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Obx(() => DropdownButtonFormField(
                            isExpanded: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                            hint: Text(
                              'Book Type',
                            ),
                            onChanged: (newValue) {
                              addVehicleViewModel.setSelected(newValue);
                            },
                            value: addVehicleViewModel.selected.value,
                            items: addVehicleViewModel.list.map((selectedType) {
                              return DropdownMenuItem(
                                child: new Text(
                                  selectedType,
                                ),
                                value: selectedType,
                              );
                            }).toList(),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "BODY STYLE",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Obx(() => DropdownButtonFormField(
                            isExpanded: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                            hint: Text(
                              'Book Type',
                            ),
                            onChanged: (newValue) {
                              addVehicleViewModel.setSelected(newValue);
                            },
                            value: addVehicleViewModel.selected.value,
                            items: addVehicleViewModel.list.map((selectedType) {
                              return DropdownMenuItem(
                                child: new Text(
                                  selectedType,
                                ),
                                value: selectedType,
                              );
                            }).toList(),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        //AUTO SIZE txt and dropdown and DRIVE TYPE txt and dropdown
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "YEAR",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Obx(() => DropdownButtonFormField(
                            isExpanded: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                            hint: Text(
                              'Book Type',
                            ),
                            onChanged: (newValue) {
                              addVehicleViewModel.setSelected(newValue);
                            },
                            value: addVehicleViewModel.selected.value,
                            items: addVehicleViewModel.list.map((selectedType) {
                              return DropdownMenuItem(
                                child: new Text(
                                  selectedType,
                                ),
                                value: selectedType,
                              );
                            }).toList(),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Make",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Obx(() => DropdownButtonFormField(
                            isExpanded: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                            hint: Text(
                              'Book Type',
                            ),
                            onChanged: (newValue) {
                              addVehicleViewModel.setSelected(newValue);
                            },
                            value: addVehicleViewModel.selected.value,
                            items: addVehicleViewModel.list.map((selectedType) {
                              return DropdownMenuItem(
                                child: new Text(
                                  selectedType,
                                ),
                                value: selectedType,
                              );
                            }).toList(),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        //DATE in stock text
        Row(
          children: [
            Text(
              "DATE IN STOCK",
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        //6th form field row with DATE IN STOCK datepickerfield and STOCK NUMBER field
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: "DATE IN STOCK"),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: "STOCK NUMBER"),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        //Dealer Certified text
        Row(
          children: [
            Text(
              "DEALER CERTIFIED",
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        //yes and no radio button
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  Obx(
                    () => Radio(
                        value: "Yes",
                        activeColor: Color(CommonColor.rightColor),
                        groupValue:
                            genderSelctionController.selectedGender.value,
                        onChanged: (value) {
                          genderSelctionController.onChangedGender(value);
                        }),
                  ),
                  Text(
                    "Yes",
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Obx(
                    () => Radio(
                        value: "No",
                        activeColor: Color(CommonColor.rightColor),
                        groupValue:
                            genderSelctionController.selectedGender.value,
                        onChanged: (value) {
                          genderSelctionController.onChangedGender(value);
                        }),
                  ),
                  Text(
                    "No",
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        //Visual Details text
        Row(
          children: [
            Text(
              "Visual Details",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        //Exterior color and Interior color row with dropdowns
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "EXTERIOR COLOR",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Obx(() => DropdownButtonFormField(
                            isExpanded: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                            hint: Text(
                              'Book Type',
                            ),
                            onChanged: (newValue) {
                              addVehicleViewModel.setSelected(newValue);
                            },
                            value: addVehicleViewModel.selected.value,
                            items: addVehicleViewModel.list.map((selectedType) {
                              return DropdownMenuItem(
                                child: new Text(
                                  selectedType,
                                ),
                                value: selectedType,
                              );
                            }).toList(),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "INTERIOR COLOR",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Obx(() => DropdownButtonFormField(
                            isExpanded: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                            hint: Text(
                              'Book Type',
                            ),
                            onChanged: (newValue) {
                              addVehicleViewModel.setSelected(newValue);
                            },
                            value: addVehicleViewModel.selected.value,
                            items: addVehicleViewModel.list.map((selectedType) {
                              return DropdownMenuItem(
                                child: new Text(
                                  selectedType,
                                ),
                                value: selectedType,
                              );
                            }).toList(),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        //Row of text CONDITION
        Row(
          children: [
            Text(
              "CONDITION",
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        //New and Used radio button row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  Obx(
                    () => Radio(
                        value: "New",
                        activeColor: Color(CommonColor.rightColor),
                        groupValue:
                            genderSelctionController.selectedGender.value,
                        onChanged: (value) {
                          genderSelctionController.onChangedGender(value);
                        }),
                  ),
                  Text(
                    "New",
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Obx(
                    () => Radio(
                        value: "Used",
                        activeColor: Color(CommonColor.rightColor),
                        groupValue:
                            genderSelctionController.selectedGender.value,
                        onChanged: (value) {
                          genderSelctionController.onChangedGender(value);
                        }),
                  ),
                  Text(
                    "Used",
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  )
                ],
              ),
            )
          ],
        ),

        SizedBox(
          height: 10,
        ),
        //Row of text STATUS
        Row(
          children: [
            Text(
              "STATUS",
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        //New and Used radio button row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  Obx(
                    () => Radio(
                        value: "Live",
                        activeColor: Color(CommonColor.rightColor),
                        groupValue:
                            genderSelctionController.selectedGender.value,
                        onChanged: (value) {
                          genderSelctionController.onChangedGender(value);
                        }),
                  ),
                  Text(
                    "Live",
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Obx(
                    () => Radio(
                        value: "In Prep",
                        activeColor: Color(CommonColor.rightColor),
                        groupValue:
                            genderSelctionController.selectedGender.value,
                        onChanged: (value) {
                          genderSelctionController.onChangedGender(value);
                        }),
                  ),
                  Text(
                    "In Prep",
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        //Row of text Price Details
        Row(
          children: [
            Text(
              "Price Details",
              style: TextStyle(fontSize: 19),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
//Msrp and Selling Price text field
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: "MSRP"),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: "SELLING PRICE"),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        //INTERNET PRICE and INVOICE PRICE text field
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: "INTERNET PRICE"),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: "INVOICE PRICE"),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        //Details textfield row
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(hintText: "DETAILS"),
            ),
          ),
        ]),
        SizedBox(
          height: 20,
        ),
        //CRAIGLIST ADD KEYWORD TXT FILED
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(hintText: "CRAIGLIST ADD KEYWORD"),
            ),
          ),
        ]),
        SizedBox(
          height: 20,
        ),
        //CRAIGLIST TITLE TEXT FIELD
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(hintText: "CRAIGLIST TITLE"),
            ),
          ),
        ]),
        SizedBox(height: 15,),
        //LAST BUTTON ADD VEHICLE
        Container(
          width: Get.width,
          height: Get.height * 0.06,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 1.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 2.0), // shadow direction: bottom right
              )
            ],
            borderRadius: BorderRadius.all(Radius.circular(50)),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xff2699D8), Color(0xff0DC7C6)]),
          ),
          child: Center(
              child: Text(
                "Add Vehicle",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        ),
        SizedBox(height: 15,),
      ],
    );
  }
}
