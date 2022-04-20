import 'package:dealers_gear_cms/screens/dashboard_screen/dashboard_model.dart';
import 'package:dealers_gear_cms/screens/dashboard_screen/dashboard_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardView extends StatelessWidget {
   DashboardView({Key? key}) : super(key: key);
  DashboardViewModel dashboardViewModel = Get.put(DashboardViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: [
            Obx(()=>eightContainer(),),


          ],
        ),
      ),
    );
  }
  Widget eightContainer(){
    return Container(
      child:Column(
        children: [
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 130,
                      width: 130,
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
                        child: Text(
                          dashboardViewModel.dashboardModel.value.thirtyDaysCars.toString(),
                          style: TextStyle(
                              fontSize: 25, color: Color(0xff0DC7C6)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("0 - 30 Day Old Cars")
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      width: 130,
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
                        child: Text(
                          dashboardViewModel.dashboardModel.value.sixtyDaysCars.toString(),
                          style: TextStyle(
                              fontSize: 25, color: Color(0xff0DC7C6)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("30 - 60 Day Old Cars")
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 130,
                      width: 130,
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
                        child: Text(
                          dashboardViewModel.dashboardModel.value.ninetyDaysCars.toString(),
                          style: TextStyle(
                              fontSize: 25, color: Color(0xff0DC7C6)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("60 - 90 Day Old Cars")
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 130,
                      width: 130,
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
                        child: Text(
                          dashboardViewModel.dashboardModel.value.ninetyPlusDaysCars.toString(),
                          style: TextStyle(
                              fontSize: 25, color: Color(0xff0DC7C6)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("90+ Day Old Cars")
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 130,
                      width: 130,
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
                        child: Text(
                          dashboardViewModel.dashboardModel.value.carsWithNoImage.toString(),
                          style: TextStyle(
                              fontSize: 25, color: Color(0xff0DC7C6)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Cars With No Image")
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 130,
                      width: 130,
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
                        child: Text(
                          dashboardViewModel.dashboardModel.value.carsWithNoPrice.toString(),
                          style: TextStyle(
                              fontSize: 25, color: Color(0xff0DC7C6)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Cars With No Price")
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 130,
                      width: 130,
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
                        child: Text(
                          dashboardViewModel.dashboardModel.value.usedCars.toString(),
                          style: TextStyle(
                              fontSize: 25, color: Color(0xff0DC7C6)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Used Cars")
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 130,
                      width: 130,
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
                        child: Text(
                          dashboardViewModel.dashboardModel.value.newCars.toString(),
                          style: TextStyle(
                              fontSize: 25, color: Color(0xff0DC7C6)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("New Cars")
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
