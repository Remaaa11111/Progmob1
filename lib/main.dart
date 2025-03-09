import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false, // Menghilangkan label debug
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 90,
            backgroundImage: AssetImage('assets/rems.jpg'),
          ),
          const SizedBox(height: 15),
          const Text(
            'Ni Ketut Rema Yoni Antari',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
            textAlign: TextAlign.center,
          ),
          GestureDetector(
            child: const Text(
              'https://www.instagram.com/remayoniantari/',
              style: TextStyle(fontSize: 16, color: Colors.blueAccent, decoration: TextDecoration.underline),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildCard('Denpasar', Icons.location_on, Colors.redAccent),
              const SizedBox(width: 10),
              _buildCard('Wijaya Kusuma', Icons.home, Colors.lightGreen),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildCard('pop', Icons.music_note, Colors.black87),
              const SizedBox(width: 10),
              _buildCard('Undiksha', Icons.business, Colors.blue),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String title, IconData icon, Color color) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.blue, width: 2),
      ),
      child: SizedBox(
        width: 130,
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 40, color: color),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
