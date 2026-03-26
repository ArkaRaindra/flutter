import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Deklarasikan variabel di dalam method build
    String nama = "Arka";
    int umur = 17;
    double nilai = 60;
    bool isLulus = false;

    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan label "debug" di pojok
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Profil Siswa"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Membuat konten di tengah vertikal
            children: [
              // 2. Gunakan $namaVariable di dalam widget Text
              Text(
                "Nama Siswa: $nama",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10), // Memberi jarak antar baris
              Text("Umur: $umur Tahun", style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 10),
              Text("Nilai: $nilai", style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 10),

              // Contoh penggunaan logika sederhana untuk Boolean
              Text(
                "Status Kelulusan: ${isLulus ? 'LULUS' : 'TIDAK LULUS'}",
                style: TextStyle(
                  fontSize: 18,
                  color: isLulus ? Colors.green : Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
