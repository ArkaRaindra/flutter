import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tes Input Data Siswa')),
      body: Center(
        child: ElevatedButton(
          child: const Text("Simpan Data Saya"),
          onPressed: () {
            simpanData(context);
          },
        ),
      ),
    );
  }

  void simpanData(BuildContext context) async {
    try {
      await FirebaseFirestore.instance.collection('uji_siswa').add({
        'nama': 'Arka Prasasya Raindra',
        'jurusan': 'SIJA',
        'kelas': 'XII SIJA 2',
        'waktu': Timestamp.now(),
      });
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("SUKSES! Data berhasil disimpan."),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("GAGAL!: $e."), backgroundColor: Colors.red),
        );
      }
    }
  }
}
