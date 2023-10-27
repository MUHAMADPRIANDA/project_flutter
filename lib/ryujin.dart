import 'package:flutter/material.dart';

class RyujinPage extends StatelessWidget {
  const RyujinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ryujin Walpaper'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 6, // Batasi jumlah gambar
        itemBuilder: (context, index) {
          return Container(
        padding: const EdgeInsets.only(top: 20, bottom: 10), // Atur jarak antara atas dan bawah di sini
        child: Image.asset(
        'assets/images/ryujin/ryujin${index + 1}.jpg',
            ),
          );
        },
      ),
    );
  }
}