import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasflutter/controller/feat_controller.dart';


class FeatPage extends StatelessWidget {
  FeatPage({super.key});

  final controller = Get.put(FeatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Klub Premier League"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(() {
          // Tampilkan loading saat proses mengambil data
          if (controller.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (controller.teams.isEmpty) {
            return const Center(
              child: Text("Tidak ada data klub"),
            );
          }

          return ListView.builder(
            itemCount: controller.teams.length,
            itemBuilder: (context, index) {
              final team = controller.teams[index];

              return Card(
                elevation: 2,
                margin: const EdgeInsets.symmetric(vertical: 6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: team.strBadge.isNotEmpty
                      ? Image.network(
                          team.strBadge,
                          width: 45,
                          height: 45,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) =>
                              const Icon(Icons.sports_soccer),
                        )
                      : const Icon(Icons.sports_soccer),
                  title: Text(
                    team.strTeam,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(team.strStadium),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
