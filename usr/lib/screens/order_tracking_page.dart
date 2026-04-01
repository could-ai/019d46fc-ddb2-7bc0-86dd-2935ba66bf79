import 'package:flutter/material.dart';
import '../models/mock_data.dart';

class OrderTrackingPage extends StatelessWidget {
  const OrderTrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final order = mockOrders[0];
    final steps = ['Order Placed', 'Packed by Farmer', 'Out for Delivery', 'Delivered'];
    final currentStep = steps.indexOf(order.status.replaceAll('_', ' ').toUpperCase());
    return Scaffold(
      appBar: AppBar(title: const Text('Order Tracking')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Stepper(
              currentStep: currentStep,
              steps: steps.map((step) => Step(title: Text(step), content: const SizedBox())).toList(),
            ),
          ],
        ),
      ),
    );
  }
}