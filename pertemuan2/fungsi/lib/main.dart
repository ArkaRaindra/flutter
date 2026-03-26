import 'package:flutter/material.dart';

// 1. Function di luar class (Top-Level Function)
String salamGlobal(String nama) {
  return "Halo $nama, Selamat Belajar Flutter!";
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // 2. Function di dalam class (Method)
  // Function TANPA parameter
  String salamSekolah() {
    return "Selamat Datang di SMK Negeri 2 Yogyakarta";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Praktik Function"),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Memanggil function tanpa parameter
                Text(
                  salamSekolah(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 30),

                // Memanggil function dengan parameter
                Text(
                  salamGlobal("Siswa SMK"),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 2, 150, 0),
                  ),
                ),

                const SizedBox(height: 20),

                // Memanggil function dengan parameter yang berbeda
                Text(
                  salamGlobal("Arka"),
                  style: const TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
