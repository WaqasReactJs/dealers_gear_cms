import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xff2699D8), Color(0xff0DC7C6)]),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 18.0,left: 18,right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("First Name",style: TextStyle(
              color: Colors.grey
            ),),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Incoming First Name"
              ),
            ),
            SizedBox(height: 18,),
            Text("Last Name",style: TextStyle(
                color: Colors.grey
            ),),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Incoming Last Name"
              ),
            ),
            SizedBox(height: 18,),
            Container(
              width: Get.width,
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
                    "LOG OUT",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
