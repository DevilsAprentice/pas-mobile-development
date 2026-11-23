import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../pages/home_page.dart';
import '../pages/feat_page.dart';
import '../pages/profile_page.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listpage = [
    HomePage(),
    FeatPage(),
    const ProfilePage(),
  ];
}
