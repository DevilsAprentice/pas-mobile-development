import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 55,
              backgroundImage:NetworkImage(''),
            ),
            const SizedBox(height: 16),
            const Text(
              'arham abdurrahman nur ',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              '11 PPLG 2 / No. Absen 4',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 16),
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: const Text(
                  'Siswa yang rajin ngoding jujur dan bersemangat.',
                  textAlign: TextAlign.center,
                  style: TextStyle(height: 1.4),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Card(
              elevation: 2,
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.school, color: Color.fromARGB(255, 0, 0, 0)),
                    title: Text('Jurusan'),
                    subtitle: Text('Pengembangan Perangkat Lunak dan Gim (PPLG)'),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.class_, color: Color.fromARGB(255, 0, 0, 0)),
                    title: Text('Kelas'),
                    subtitle: Text('11 PPLG 1'),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.confirmation_number, color: Color.fromARGB(255, 0, 0, 0)),
                    title: Text('No. Absen'),
                    subtitle: Text('4'),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.email, color: Color.fromARGB(255, 0, 0, 0)),
                    title: Text('Email'),
                    subtitle: Text('lebahinspector@gmail.com'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
