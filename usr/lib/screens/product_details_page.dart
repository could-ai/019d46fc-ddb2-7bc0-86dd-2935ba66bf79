import 'package:flutter/material.dart';
import '../models/mock_data.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final product = mockProducts[0]; // Mock - pass via args in real app
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.network(product.imageUrl, height: 200, fit: BoxFit.cover),
            Text(product.description),
            Text('Harvest Date: ${product.harvestDate.toString().split(' ')[0]}'),
            TextButton(onPressed: () {}, child: const Text('Farmer Profile')),
            Text('Available: ${product.availableQuantity} kg'),
            Row(
              children: [
                ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/cart'), child: const Text('Add to Cart')),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: const Text('Pre-order')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}