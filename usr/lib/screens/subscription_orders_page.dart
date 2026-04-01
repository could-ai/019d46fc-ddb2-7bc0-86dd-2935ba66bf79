import 'package:flutter/material.dart';

class SubscriptionOrdersPage extends StatelessWidget {
  const SubscriptionOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Subscription Orders')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text('Subscribe for weekly deliveries (Mock implementation).'),
      ),
    );
  }
}