import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/transaksi_controller.dart';

class TransaksiPage extends StatelessWidget {
  TransaksiPage({super.key});

  final TransaksiController controller = Get.put(TransaksiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaksi Pembelian'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        controller.makanan.gambar,
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          width: double.infinity,
                          height: 200,
                          color: Colors.grey[200],
                          child: const Icon(
                            Icons.broken_image,
                            size: 50,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      controller.makanan.namaMakanan,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Harga: Rp ${controller.makanan.harga}',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Deskripsi:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text(controller.makanan.deskripsi),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

         
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Input Jumlah Makanan',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      controller: controller.txtJumlah,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: 'Masukkan jumlah (contoh: 2)',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          controller.bayar();
                        },
                        child: const Text(
                          'Bayar',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

           
            Obx(() {
              if (!controller.isSudahHitung.value) {
                return const SizedBox();
              }

              return Card(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Rincian Pembayaran:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Divider(),
                      Text(
                        'Subtotal: Rp ${controller.subtotal.value}',
                        style: const TextStyle(fontSize: 15),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'PPN (5%): Rp ${controller.ppn.value.toStringAsFixed(0)}',
                        style: const TextStyle(fontSize: 15),
                      ),
                      const Divider(),
                      Text(
                        'Total Bayar: Rp ${controller.totalBayar.value.toStringAsFixed(0)}',
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
