import 'package:flutter/material.dart';
import '../models/mock_data.dart';

class FarmerDashboard extends StatelessWidget {
  const FarmerDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Farmer Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(child: ListTile(title: const Text('Add New Product'), onTap: () {})),
            Card(child: ListTile(title: const Text('Update Price & Quantity'), onTap: () {})),
            Card(child: ListTile(title: const Text('View Orders'), onTap: () => Navigator.pushNamed(context, '/order-tracking'))),
            Card(child: const ListTile(title: Text('Earnings Summary: $500'), subtitle: Text('This month'))),
          ],
        ),
      ),
    );
  }
}