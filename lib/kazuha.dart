import 'package:flutter/material.dart';

class KazuhaPage extends StatelessWidget {
  const KazuhaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kazuha Walpaper'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 9, // Batasi jumlah gambar
        itemBuilder: (context, index) {
          return Container(
        padding: const EdgeInsets.only(top: 20, bottom: 10),
        child: Image.asset(
        'assets/images/kazuha/kazuha${index + 1}.jpg',
            ),
          );
        },
      ),
    );
  }
}