import 'package:flutter/material.dart';
import '../models/mock_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Farm-to-Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, '/cart'),
          ),
          IconButton(
            icon: const Icon(Icons.login),
            onPressed: () => Navigator.pushNamed(context, '/login'),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(title: const Text('Home'), onTap: () => Navigator.pop(context)),
            ListTile(title: const Text('Products'), onTap: () => Navigator.pushNamed(context, '/product-listing')),
            ListTile(title: const Text('Login'), onTap: () => Navigator.pushNamed(context, '/login')),
            ListTile(title: const Text('Register'), onTap: () => Navigator.pushNamed(context, '/register')),
            ListTile(title: const Text('Contact'), onTap: () => Navigator.pushNamed(context, '/contact-support')),
            ListTile(title: const Text('About Us'), onTap: () => Navigator.pushNamed(context, '/about-us')),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Banner
            Container(
              height: 200,
              color: Colors.lightGreen.shade100,
              child: const Center(
                child: Text(
                  'Fresh from Farm to Your Home',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ),
            ),
            // Featured Products
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Featured Products', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: mockProducts.length,
                      itemBuilder: (context, index) {
                        final product = mockProducts[index];
                        return Card(
                          child: SizedBox(
                            width: 150,
                            child: Column(
                              children: [
                                Image.network(product.imageUrl, height: 100, fit: BoxFit.cover),
                                Text(product.name),
                                Text('$${product.pricePerKg}/kg'),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text('Seasonal Vegetables & Fruits', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  // Similar to featured
                  const SizedBox(height: 20),
                  const Text('Benefits of Buying Directly from Farmers', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const Text('Freshness, support local economy, no middlemen.'),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () => Navigator.pushNamed(context, '/product-listing'),
                        child: const Text('Shop Now'),
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.pushNamed(context, '/register'),
                        child: const Text('Become a Farmer'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}