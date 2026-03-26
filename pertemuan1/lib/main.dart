import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Flutter Pertamaku',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 149, 242, 178),
      appBar: AppBar(
        title: const Text(
          'Tugas Pertemuan 1',
          style: TextStyle(fontFamily: "Bebas"),
        ),
        backgroundColor: const Color.fromARGB(255, 117, 186, 144),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 10,
            right: 10,
            child: Image.asset('assets/images/HTT.png', width: 60),
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/konatahype.gif', width: 100),
                Padding(padding: EdgeInsets.all(10)),
                const Text(
                  'Arka Prasasya Raindra',
                  style: TextStyle(
                    fontFamily: "Bebas",
                    fontSize: 40,
                    color: Color.fromARGB(255, 52, 54, 55),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'XII SIJA 2 / 07',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 25, 25, 26),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Image.asset('assets/images/luluco.png', width: 150),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
