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
      home: const BusinessCardScreen(),
    );
  }
}

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 60,
                  child: Icon(Icons.person, size: 70),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Mia Asrianti Saidah',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'MAHASISWA TEKNIK INFORMATIKA',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 20),

                // Card nomor telepon
                const Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                  child: ListTile(
                    leading: Icon(Icons.phone, color: Colors.teal),
                    title: Text('Nomor Telepon'),
                    subtitle: Text('085723651321'),
                  ),
                ),

                // Card email
                const Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                  child: ListTile(
                    leading: Icon(Icons.email, color: Colors.teal),
                    title: Text('Email'),
                    subtitle: Text('miaasrianti35@gmail.com'),
                  ),
                ),

                // Card Instagram
                const Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                  child: ListTile(
                    leading: Icon(Icons.camera_alt, color: Colors.teal),
                    title: Text('Instagram'),
                    subtitle: Text('@amiaa'),
                  ),
                ),

                // Card GitHub
                const Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                  child: ListTile(
                    leading: Icon(Icons.code, color: Colors.teal),
                    title: Text('GitHub'),
                    subtitle: Text('miaasrianti'),
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
