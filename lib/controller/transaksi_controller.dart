import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasflutter/model/makanan_model.dart';

class TransaksiController extends GetxController {
  late MakananModel makanan;

  TextEditingController txtJumlah = TextEditingController();

  var subtotal = 0.obs;
  var ppn = 0.0.obs;
  var totalBayar = 0.0.obs;
  var isSudahHitung = false.obs;

  @override
  void onInit() {
    super.onInit();
    makanan = Get.arguments as MakananModel;
  }

  void bayar() {
    if (txtJumlah.text.isEmpty) {
      Get.snackbar("Peringatan", "Jumlah beli tidak boleh kosong");
      return;
    }

    int jumlah = int.tryParse(txtJumlah.text) ?? 0;

    if (jumlah <= 0) {
      Get.snackbar("Peringatan", "Jumlah beli harus lebih dari 0");
      return;
    }

    
    subtotal.value = makanan.harga * jumlah;
    ppn.value = subtotal.value * 0.05;
    totalBayar.value = subtotal.value + ppn.value;

    isSudahHitung.value = true;
  }
}
