import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pasflutter/model/login_model.dart';
import 'package:get/get.dart';
import 'package:pasflutter/routes.dart';

class LoginController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;

  void login() async {
    if (txtUsername.text.isEmpty || txtPassword.text.isEmpty) {
      Get.snackbar("Peringatan", "Username dan Password tidak boleh kosong");
      return;
    }

    try {
      isLoading.value = true;
      final url = Uri.parse("https://mediadwi.com/api/latihan/login");

      final response = await http.post(url, body: {
        "username": txtUsername.text,
        "password": txtPassword.text,
      });

      isLoading.value = false;

      if (response.statusCode == 200) {
        final loginModel = loginModelFromJson(response.body);

        if (loginModel.status == true) {
          Get.snackbar("Berhasil", loginModel.message);
      
          Get.offAllNamed(Routes.mainMenu);
        } else {
      
          Get.snackbar("Gagal", loginModel.message);
        }
      } else {
        Get.snackbar("Error", "Gagal terhubung ke server");
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar("Error", e.toString());
    }
  }
}
