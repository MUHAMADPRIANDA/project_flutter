import 'package:flutter/material.dart';

class YejiPage extends StatelessWidget {
  const YejiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yeji Walpaper'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 3, // Batasi jumlah gambar
        itemBuilder: (context, index) {
          return Container(
        padding: const EdgeInsets.only(top: 20, bottom: 10), // Atur jarak antara atas dan bawah di sini
        child: Image.asset(
        'assets/images/yeji/yeji${index + 1}.jpg',
            ),
          );
        },
      ),
    );
  }
}