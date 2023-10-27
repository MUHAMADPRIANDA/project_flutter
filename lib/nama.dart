import 'package:flutter/material.dart';
import 'package:project_flutter/kazuha.dart';
import 'package:project_flutter/ryujin.dart';
import 'package:project_flutter/yeji.dart';

class NamaPage extends StatelessWidget {
  const NamaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pilih Walpaper'),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 10), // Jarak antara tombol pertama dengan atas layar
          ElevatedButton(
            onPressed: () {
              _navigateToKazuhaPage(context, 'Nama Orang 1');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple, // Warna latar belakang tombol
              foregroundColor: Colors.white, // Warna teks tombol
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Kazuha Walpaper',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 10), // Jarak antara tombol pertama dengan tombol kedua
          ElevatedButton(
            onPressed: () {
              _navigateToRyujinPage(context, 'Nama Orang 2');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, // Warna latar belakang tombol
              foregroundColor: Colors.white, // Warna teks tombol
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Ryujin Walpaper',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),

          const SizedBox(height: 10), // Jarak antara tombol kedua dengan tombol ketiga

          ElevatedButton(
            onPressed: () {
              _navigateToYejiPage(context, 'Nama Orang 3');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red, // Warna latar belakang tombol
              foregroundColor: Colors.white, // Warna teks tombol
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Yeji Walpaper',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),

          const SizedBox(height: 10), // Jarak antara tombol ketiga dengan tombol keempat

          ElevatedButton(
            onPressed: () {
              //_navigateTo(context, 'Nama Orang 4');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown, // Warna latar belakang tombol
              foregroundColor: Colors.white, // Warna teks tombol
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'coming soon',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),

          const SizedBox(height: 10), // Jarak antara tombol keempat dengan bawah layar

        ],
      ),
    );
  }

  void _navigateToKazuhaPage(BuildContext context, String personName) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const KazuhaPage(),
    ));
  }

  void _navigateToRyujinPage(BuildContext context, String personName) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const RyujinPage(),
    ));
  }

  void _navigateToYejiPage(BuildContext context, String personName) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const YejiPage(),
    ));
  }
}
