import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin{
  //TODO: Implement HomeController
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'All Offers'),
    Tab(text: 'Gifts'),
    Tab(text: 'Upcoming'),
    Tab(text: 'My Offers'),
  ];

   TabController? controller;
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    controller!.dispose();
    super.onClose();
  }

  void increment() => count.value++;
}
