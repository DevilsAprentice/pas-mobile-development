import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasflutter/controller/home_controller.dart';
import '../routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Katalog Makanan"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(() {
          if (controller.listMakanan.isEmpty) {
            return const Center(
              child: Text("Tidak ada data makanan"),
            );
          }

          return ListView.builder(
            itemCount: controller.listMakanan.length,
            itemBuilder: (context, index) {
              final makanan = controller.listMakanan[index];

              return Card(
                elevation: 2,
                margin: const EdgeInsets.symmetric(vertical: 6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: () {
                    Get.toNamed(
                      Routes.transaksi,
                      arguments: makanan,
                    );
                  },
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        makanan.gambar,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          width: 50,
                          height: 50,
                          color: Colors.grey[200],
                          child: const Icon(Icons.fastfood, color: Colors.grey),
                        ),
                      ),
                    ),
                    title: Text(
                      makanan.namaMakanan,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Rp ${makanan.harga}',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
