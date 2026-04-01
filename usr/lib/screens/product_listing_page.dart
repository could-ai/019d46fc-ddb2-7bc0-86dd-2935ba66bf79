import 'package:flutter/material.dart';
import '../models/mock_data.dart';

class ProductListingPage extends StatefulWidget {
  const ProductListingPage({super.key});

  @override
  State<ProductListingPage> createState() => _ProductListingPageState();
}

class _ProductListingPageState extends State<ProductListingPage> {
  String _category = 'All';
  double _priceRange = 10.0;
  String _location = 'All';

  List<Product> get filteredProducts => mockProducts.where((p) =>
    (_category == 'All' || p.category == _category) &&
    p.pricePerKg <= _priceRange &&
    (_location == 'All' || p.location == _location)
  ).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: Column(
        children: [
          // Filters
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                DropdownButton<String>(value: _category, items: ['All', 'Vegetables', 'Fruits'].map((c) => DropdownMenuItem(value: c, child: Text(c))).toList(), onChanged: (v) => setState(() => _category = v!)),
                const SizedBox(width: 10),
                Text('Price: $${_priceRange.toStringAsFixed(1)}'),
                Slider(value: _priceRange, min: 0, max: 10, onChanged: (v) => setState(() => _priceRange = v)),
                DropdownButton<String>(value: _location, items: ['All', 'California', 'New York'].map((l) => DropdownMenuItem(value: l, child: Text(l))).toList(), onChanged: (v) => setState(() => _location = v!)),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                final product = filteredProducts[index];
                return Card(
                  child: Column(
                    children: [
                      Image.network(product.imageUrl, height: 100, fit: BoxFit.cover),
                      Text(product.name),
                      Text('$${product.pricePerKg}/kg'),
                      Text(product.farmerName),
                      ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/cart'), child: const Text('Add to Cart')),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}