import 'package:flutter/material.dart';

import '../constants.dart';

class MaterialsPage extends StatelessWidget {
  const MaterialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Magnet')),
      body: ListView(
        children: [
          Image.asset('$materialsRoute/1.jpg'),
          Image.asset('$materialsRoute/2.jpg'),
          Image.asset('$materialsRoute/3.jpg'),
          Image.asset('$materialsRoute/4.jpg'),
        ],
      ),
    );
  }
}
