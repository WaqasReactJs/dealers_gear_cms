import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: 8,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Column(
                children: [
                  Container(
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
                        "5",
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
            );
          }),
    );
  }
}
//GridView(
//        //   physics: BouncingScrollPhysics(),
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//           ),
//           children: [
//
//
//             Column(
//               children: [
//                 Container(
//                   height: 130,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black26,
//                         blurRadius: 1.0,
//                         spreadRadius: 0.0,
//                         offset: Offset(
//                           2.0,
//                           2.0,
//                         ), // shadow direction: bottom right
//                       )
//                     ],
//                   ),
//                   child: Center(
//                     child: Text(
//                       "0",
//                       style: TextStyle(fontSize: 25, color: Color(0xff0DC7C6)),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text("30 - 60 Day Old Cars")
//               ],
//             ),
//             Column(
//               children: [
//                 Container(
//                   height: 130,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black26,
//                         blurRadius: 1.0,
//                         spreadRadius: 0.0,
//                         offset: Offset(
//                           2.0,
//                           2.0,
//                         ), // shadow direction: bottom right
//                       )
//                     ],
//                   ),
//                   child: Center(
//                     child: Text(
//                       "0",
//                       style: TextStyle(fontSize: 25, color: Color(0xff0DC7C6)),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text("60 - 90 Day Old Cars")
//               ],
//             ),
//             Column(
//               children: [
//                 Container(
//                   height: 130,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black26,
//                         blurRadius: 1.0,
//                         spreadRadius: 0.0,
//                         offset: Offset(
//                           2.0,
//                           2.0,
//                         ), // shadow direction: bottom right
//                       )
//                     ],
//                   ),
//                   child: Center(
//                     child: Text(
//                       "8",
//                       style: TextStyle(fontSize: 25, color: Color(0xff0DC7C6)),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text("90+ Day Old Cars")
//               ],
//             ),
//             Column(
//               children: [
//                 Container(
//                   height: 130,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black26,
//                         blurRadius: 1.0,
//                         spreadRadius: 0.0,
//                         offset: Offset(
//                           2.0,
//                           2.0,
//                         ), // shadow direction: bottom right
//                       )
//                     ],
//                   ),
//                   child: Center(
//                     child: Text(
//                       "1",
//                       style: TextStyle(fontSize: 25, color: Color(0xff0DC7C6)),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text("Cars With No Image")
//               ],
//             ),
//             Column(
//               children: [
//                 Container(
//                   height: 130,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black26,
//                         blurRadius: 1.0,
//                         spreadRadius: 0.0,
//                         offset: Offset(
//                           2.0,
//                           2.0,
//                         ), // shadow direction: bottom right
//                       )
//                     ],
//                   ),
//                   child: Center(
//                     child: Text(
//                       "3",
//                       style: TextStyle(fontSize: 25, color: Color(0xff0DC7C6)),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text("Cars With No Price")
//               ],
//             ),
//             Column(
//               children: [
//                 Container(
//                   height: 130,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black26,
//                         blurRadius: 1.0,
//                         spreadRadius: 0.0,
//                         offset: Offset(
//                           2.0,
//                           2.0,
//                         ), // shadow direction: bottom right
//                       )
//                     ],
//                   ),
//                   child: Center(
//                     child: Text(
//                       "13",
//                       style: TextStyle(fontSize: 25, color: Color(0xff0DC7C6)),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text("Used Cars")
//               ],
//             ),
//             Column(
//               children: [
//                 Container(
//                   height: 130,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black26,
//                         blurRadius: 1.0,
//                         spreadRadius: 0.0,
//                         offset: Offset(
//                           2.0,
//                           2.0,
//                         ), // shadow direction: bottom right
//                       )
//                     ],
//                   ),
//                   child: Center(
//                     child: Text(
//                       "1",
//                       style: TextStyle(fontSize: 25, color: Color(0xff0DC7C6)),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text("New Cars")
//               ],
//             ),
//           ],
//         ),
// DefaultTabController(
//             length: 2, // length of tabs
//             initialIndex: 0,
//             child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: <Widget>[
//                   Container(
//                     child: TabBar(
//                       labelColor: Colors.black26,
//                       unselectedLabelColor: Colors.black26,
//                       tabs: [
//                         Tab(
//                           text: 'CRAIGLIST',
//                         ),
//                         Tab(text: 'WEB'),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: 400, //height of TabBarView
//                     decoration: BoxDecoration(
//                         border: Border(
//                             top: BorderSide(color: Colors.grey, width: 0.5))),
//                     child: TabBarView(children: <Widget>[
//                       Container(
//                         child: Text("Waqas"),
//                       ),
//                       Container(
//                         child: Text("Waqas"),
//                       ),
//                     ]),
//                   )
//                 ]),
//           )