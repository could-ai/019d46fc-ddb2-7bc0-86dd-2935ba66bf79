import 'package:flutter/material.dart';

class FarmerStoriesPage extends StatelessWidget {
  const FarmerStoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Farmer Success Stories')),
      body: ListView(
        children: const [
          ListTile(title: Text('Farmer John: Increased sales by 50%')),
        ],
      ),
    );
  }
}