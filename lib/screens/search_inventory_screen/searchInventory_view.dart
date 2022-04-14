import 'package:dealers_gear_cms/screens/common/common_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchInventoryView extends StatelessWidget {
  const SearchInventoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8FCFF),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: txtfieldContainer(),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                      child: Container(
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                              image: AssetImage("assets/images/login_bg.png")),

                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),

                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(

                              width: double.infinity,
                              padding: EdgeInsets.all(8), 
                              decoration: BoxDecoration(

                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [Color(0xff2699D8).withOpacity(0.9), Color(0xff0DC7C6).withOpacity(0.9)]),
                              ),
                              child: Text(
                                "2015 Ford Stock# 3223",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            )),
                      ),
                    );
                  }),
            )
          ],
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
          fillColor: Colors.white,
          suffixIcon: Padding(
            padding: EdgeInsets.all(15),
            // add padding to adjust icon
            child: Icon(Icons.search, color: Color(0xff0DC7C6)),
          ),
          filled: true,
          hintText: "Search Inventory",
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
}
