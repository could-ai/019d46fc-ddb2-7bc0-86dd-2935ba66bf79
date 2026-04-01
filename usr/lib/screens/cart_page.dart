import 'package:flutter/material.dart';
import '../models/mock_data.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    double total = mockCart.fold(0, (sum, item) => sum + item.totalPrice);
    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: mockCart.length,
              itemBuilder: (context, index) {
                final item = mockCart[index];
                return ListTile(
                  title: Text(item.product.name),
                  subtitle: Row(
                    children: [
                      IconButton(icon: const Icon(Icons.remove), onPressed: () => setState(() => item.quantity--)),
                      Text(item.quantity.toString()),
                      IconButton(icon: const Icon(Icons.add), onPressed: () => setState(() => item.quantity++)),
                    ],
                  ),
                  trailing: Text('$${item.totalPrice}'),
                  leading: IconButton(icon: const Icon(Icons.delete), onPressed: () => setState(() => mockCart.removeAt(index))),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text('Total: $$total'),
                ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/checkout'), child: const Text('Proceed to Checkout')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}