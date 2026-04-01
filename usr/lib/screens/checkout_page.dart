import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  String _address = '';
  String _payment = 'COD';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(decoration: const InputDecoration(labelText: 'Delivery Address'), onChanged: (v) => _address = v),
            DropdownButtonFormField<String>(
              value: _payment,
              items: ['COD', 'Online'].map((p) => DropdownMenuItem(value: p, child: Text(p))).toList(),
              onChanged: (v) => setState(() => _payment = v!),
            ),
            const Text('Order Summary: Mock Total $10'),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/order-tracking'), child: const Text('Confirm Order')),
          ],
        ),
      ),
    );
  }
}