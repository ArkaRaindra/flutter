import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Menggunakan font yang lebih bersih dan tema Indigo yang modern
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true, // Mengaktifkan desain UI terbaru
      ),
      home: const BiodataPage(),
    );
  }
}

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Data Siswa
    String nama = "Arka";
    String jurusan = "SIJA (Sistem Informasi, Jaringan, dan Aplikasi)";
    String nis = "23091728";
    String sekolah = "SMK Negeri 2 Yogyakarta";
    String status = "Aktif";

    return Scaffold(
      backgroundColor: Colors
          .grey[100], // Background abu-abu muda agar Card terlihat kontras
      appBar: AppBar(
        title: const Text(
          "Profil Siswa",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo[800],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // --- HEADER SECTION ---
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.indigo[800],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.only(bottom: 40, top: 10),
              child: Column(
                children: [
                  // CircleAvatar dengan border putih agar lebih keren
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color.fromARGB(255, 23, 22, 22),
                        width: 3,
                      ),
                    ),
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/luluco.png'),
                      backgroundColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    nama,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "NIS: $nis",
                    style: const TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                ],
              ),
            ),

            // --- INFO SECTION ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Informasi Akademik",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),

                  // Memanggil fungsi infoCard yang sudah dipercantik
                  infoCard(Icons.school_rounded, "Sekolah", sekolah),
                  infoCard(Icons.account_tree_rounded, "Jurusan", jurusan),
                  infoCard(
                    Icons.verified_user_rounded,
                    "Status Kehadiran",
                    status,
                  ),

                  const SizedBox(height: 30),

                  // --- BUTTON SECTION ---
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.edit_note, color: Colors.white),
                    label: const Text(
                      "EDIT PROFIL",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo[800],
                      minimumSize: const Size(double.infinity, 55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- FUNGSI INFOCARD (SUDAH DI-UPGRADE) ---
  Widget infoCard(IconData icon, String label, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.indigo.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: Colors.indigo[800]),
        ),
        title: Text(
          label,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          value,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
