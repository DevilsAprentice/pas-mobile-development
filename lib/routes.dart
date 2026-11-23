import 'package:get/get.dart';
import 'package:pasflutter/pages/transaksi_page.dart';
import 'pages/login_page.dart';
import 'pages/main_menu_page.dart';

class Routes {
  static const String login = '/login';
  static const String mainMenu = '/mainMenu';
  static const String transaksi = '/transaksi';

  static final myPages = [
    GetPage(
      name: login,
      page: () => LoginPage(),
    ),
    GetPage(
      name: mainMenu,
      page: () => MainMenuPage(),
    ),
    GetPage(
      name: transaksi,
      page: () => TransaksiPage(),
    ),
  ];
}
