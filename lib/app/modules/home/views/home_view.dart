import 'package:demo1/app/modules/drawer/views/drawer_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../all_offers/views/all_offers_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  double tabIconWidth = 20;

  @override
  Widget build(BuildContext context) {
    final HomeController _tabx = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
          title: const Text('Hey Shubham'),
          toolbarHeight: 80,
          elevation: 0,
          actions: [
            Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white),
                    padding: EdgeInsets.all(3),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Icon(Icons.wallet),
                        ),
                        Center(
                            child: Text(
                          "\u20b9 460",
                          style: TextStyle(color: Colors.black),
                        )),
                      ],
                    ))),
          ]),
      drawer: DrawerView(),
      body: Container(
        color: Color(0xffe5e5e5),
        // decoration:BoxDecoration,
        child: DefaultTabController(
            length: 4,
            initialIndex: 0,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.center,
                      colors: [
                        Colors.blue,
                        Color(0xFFe5e5e5),
                      ],
                    )),
                    // color:Colors.blue,
                    padding: EdgeInsets.only(top: 1),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: TabBar(
                        controller: _tabx.controller,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.black,
                        indicatorColor: Colors.blue,
                        automaticIndicatorColorAdjustment: true,
                        labelStyle: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                        tabs: [
                          Tab(
                              text: 'All Offers',
                              icon: Image.asset(
                                "assets/images/all_offers.jpg",
                                width: tabIconWidth,
                              )),
                          Tab(
                              text: 'Gifts',
                              icon: Image.asset(
                                "assets/images/gifts.jpg",
                                width: tabIconWidth,
                              )),
                          Tab(
                            text: 'Upcoming',
                            icon: Image.asset(
                              "assets/images/clock.jpg",
                              width: tabIconWidth,
                            ),
                          ),
                          Tab(
                              text: 'My Offers',
                              icon: Image.asset(
                                "assets/images/offer.jpg",
                                width: tabIconWidth,
                              )),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(controller: _tabx.controller, children: [
                      AllOffersView(),
                      SingleChildScrollView(
                        child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: Text("Demo 1 ")),
                      ),
                      SingleChildScrollView(
                        child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: Text("Demo 2 ")),
                      ),
                      SingleChildScrollView(
                        child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: Text("Demo 3 ")),
                      ),
                    ]),
                  )
                ])),
      ),
    );
  }
}