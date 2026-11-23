import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasflutter/controller/main_menu_controller.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final controller = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: IndexedStack(
            index: controller.selectedIndex.value,
            children: controller.listpage,
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            currentIndex: controller.selectedIndex.value,
            onTap: controller.changePage,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sports_soccer),
                label: "Feat",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        ));
  }
}
