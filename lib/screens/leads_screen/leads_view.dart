import 'package:dealers_gear_cms/screens/common/common_color.dart';
import 'package:dealers_gear_cms/screens/leads_screen/leads_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class LeadsView extends StatelessWidget {
  LeadsView({Key? key}) : super(key: key);
  LeadsViewModel leadsViewModel = Get.put(LeadsViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
          DefaultTabController(
              length: 2, // length of tabs
              initialIndex: 0,
              child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                Container(
                  child: TabBar(
                    labelColor: Colors.black26,
                    unselectedLabelColor: Colors.black26,
                    tabs: [
                      Tab(text: 'CRAIGLIST', ),
                      Tab(text: 'WEB'),
                    ],
                  ),
                ),
                Container(
                    height: 400, //height of TabBarView
                    decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                    ),
                    child: TabBarView(children: <Widget>[
                      SingleChildScrollView(
                        child: Container(
                          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                            DefaultTabController(
                                length: 3, // length of tabs
                                initialIndex: 0,
                                child: SingleChildScrollView(
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                                    Container(
                                      child: TabBar(
                                      indicatorColor: Colors.transparent,
                                        labelColor: Color(CommonColor.rightColor),
                                        unselectedLabelColor: Colors.black,
                                        tabs: [
                                          Tab(text: 'Calls'),
                                          Tab(text: 'Messages'),
                                          Tab(text: 'Clicks'),

                                        ],
                                      ),
                                    ),
                                    Container(
                                        height: 400, //height of TabBarView
                                        decoration: BoxDecoration(
                                            border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                                        ),
                                        child: TabBarView(children: <Widget>[
                                          Container(
                                            child: Center(
                                              child: Text('Display Tab 1', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                                            ),
                                          ),
                                          Container(
                                            child: Center(
                                              child: Text('Display Tab 2', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                                            ),
                                          ),
                                          Container(
                                            child: Center(
                                              child: Text('Display Tab 3', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                                            ),
                                          ),

                                        ])
                                    )
                                  ]),
                                )
                            ),
                          ]),
                        ),
                      ),
                      Container(
                        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                          DefaultTabController(
                              length: 3, // length of tabs
                              initialIndex: 0,
                              child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                                Container(
                                  child: TabBar(
                                    indicatorColor: Colors.transparent,
                                    labelColor: Color(CommonColor.rightColor),
                                    unselectedLabelColor: Colors.black,
                                    tabs: [
                                      Tab(text: 'Tab 1'),
                                      Tab(text: 'Tab 2'),
                                      Tab(text: 'Tab 3'),
                                    ],
                                  ),
                                ),
                                Container(
                                    height: double.infinity, //height of TabBarView
                                    decoration: BoxDecoration(
                                        border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                                    ),
                                    child: TabBarView(children: <Widget>[
                                      Container(
                                        child: Center(
                                          child: Text('Display Tab 1', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                      Container(
                                        child: Center(
                                          child: Text('Display Tab 2', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                      Container(
                                        child: Center(
                                          child: Text('Display Tab 3', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                                        ),
                                      ),

                                    ])
                                )
                              ])
                          ),
                        ]),
                      ),
                    ])
                )
              ])
          ),
        ]),
      ),
    );
  }


}
