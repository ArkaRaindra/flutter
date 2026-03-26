import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // --- Variabel untuk Praktik Operator ---
    int a = 999;
    int b = 998;

    // Operator Logika (Hasilnya disimpan dalam variabel bool)
    bool hasilLogika = (a > 999 && b < 998);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Praktik Operator Dart"),
          backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Seksi Aritmatika
              const Text(
                "1. Operator Aritmatika",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Divider(), // Garis pemisah
              Text("Tambah (999 + 998) : ${a + b}"),
              Text("Kurang (999 - 998) : ${a - b}"),
              Text("Kali   (999 * 998) : ${a * b}"),
              Text("Bagi   (999 / 998) : ${a / b}"),

              const SizedBox(height: 25),

              // 2. Seksi Perbandingan
              const Text(
                "2. Operator Perbandingan",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Divider(),
              Text("Apakah $a > $b ? : ${a > b}"),
              Text("Apakah $a == $b ? : ${a == b}"),

              const SizedBox(height: 25),

              // 3. Seksi Logika
              const Text(
                "3. Operator Logika",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Divider(),
              Text("Hasil (a > 999 && b < 998) : $hasilLogika"),
            ],
          ),
        ),
      ),
    );
  }
}
