import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/konatahype.gif', width: 100),
            const SizedBox(height: 20),
            const Text(
              'Arka Prasasya Raindra',
              style: TextStyle(
                fontFamily: "Bebas",
                fontSize: 40,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            const Text('Kelas XII SIJA 2 / 07', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
