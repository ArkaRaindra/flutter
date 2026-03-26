import 'package:flutter/material.dart';
import 'profile_page.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(127, 255, 212, 1),
      appBar: AppBar(
        title: const Text('Galeri'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/chibi-tachyon.gif', width: 100),
                Image.asset('assets/images/chibi-tachyon.gif', width: 100),
                Image.asset('assets/images/chibi-tachyon.gif', width: 100),
              ],
            ),

            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/chibi-tachyon.gif', width: 100),
                Image.asset('assets/images/konatahype.gif', width: 100),
                Image.asset('assets/images/chibi-tachyon.gif', width: 100),
              ],
            ),

            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/chibi-tachyon.gif', width: 100),
                Image.asset('assets/images/chibi-tachyon.gif', width: 100),
                Image.asset('assets/images/chibi-tachyon.gif', width: 100),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              'Galeri',
              style: TextStyle(
                fontFamily: "Bebas",
                fontSize: 20,
                letterSpacing: 4.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text('Halaman Galeri', style: TextStyle(fontSize: 16)),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
              child: const Text('Profil'),
            ),

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
