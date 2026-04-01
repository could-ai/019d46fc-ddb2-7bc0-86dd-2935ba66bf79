import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Admin Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(child: ListTile(title: const Text('Approve Farmers'), onTap: () {})),
            Card(child: ListTile(title: const Text('Manage Users'), onTap: () {})),
            Card(child: const ListTile(title: Text('Total Orders: 100'), subtitle: Text('This month'))),
            Card(child: const ListTile(title: Text('Payments: $5000'), subtitle: Text('Processed'))),
            // Mock charts - use charts package if needed
          ],
        ),
      ),
    );
  }
}