class Product {
  final String id;
  final String name;
  final String imageUrl;
  final double pricePerKg;
  final String farmerName;
  final String description;
  final DateTime harvestDate;
  final int availableQuantity;
  final String category;
  final String location;

  Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.pricePerKg,
    required this.farmerName,
    required this.description,
    required this.harvestDate,
    required this.availableQuantity,
    required this.category,
    required this.location,
  });
}

class User {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String role; // 'customer', 'farmer', 'admin'
  final String? address;
  final String? farmName;
  final String? productType;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.role,
    this.address,
    this.farmName,
    this.productType,
  });
}

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});

  double get totalPrice => product.pricePerKg * quantity;
}

class Order {
  final String id;
  final List<CartItem> items;
  final String status; // 'placed', 'packed', 'out_for_delivery', 'delivered'
  final DateTime orderDate;
  final double total;

  Order({
    required this.id,
    required this.items,
    required this.status,
    required this.orderDate,
    required this.total,
  });
}

class Review {
  final String id;
  final String productId;
  final String customerName;
  final int rating;
  final String comment;

  Review({
    required this.id,
    required this.productId,
    required this.customerName,
    required this.rating,
    required this.comment,
  });
}

// Mock Data
final List<Product> mockProducts = [
  Product(
    id: '1',
    name: 'Organic Tomatoes',
    imageUrl: 'https://via.placeholder.com/150', // Placeholder image
    pricePerKg: 2.5,
    farmerName: 'Farmer John',
    description: 'Fresh, juicy organic tomatoes straight from the farm.',
    harvestDate: DateTime(2023, 10, 1),
    availableQuantity: 100,
    category: 'Vegetables',
    location: 'California',
  ),
  Product(
    id: '2',
    name: 'Fresh Apples',
    imageUrl: 'https://via.placeholder.com/150',
    pricePerKg: 3.0,
    farmerName: 'Farmer Jane',
    description: 'Crisp and sweet apples harvested this season.',
    harvestDate: DateTime(2023, 9, 15),
    availableQuantity: 200,
    category: 'Fruits',
    location: 'New York',
  ),
  // Add more products as needed
];

final List<User> mockUsers = [
  User(
    id: '1',
    name: 'John Doe',
    email: 'john@example.com',
    phone: '1234567890',
    role: 'customer',
    address: '123 Main St',
  ),
  User(
    id: '2',
    name: 'Jane Farmer',
    email: 'jane@farm.com',
    phone: '0987654321',
    role: 'farmer',
    farmName: 'Green Valley Farm',
    productType: 'Vegetables',
  ),
];

final List<CartItem> mockCart = []; // Will be managed locally

final List<Order> mockOrders = [
  Order(
    id: '1',
    items: [CartItem(product: mockProducts[0], quantity: 2)],
    status: 'delivered',
    orderDate: DateTime(2023, 10, 1),
    total: 5.0,
  ),
];

final List<Review> mockReviews = [
  Review(
    id: '1',
    productId: '1',
    customerName: 'John Doe',
    rating: 5,
    comment: 'Amazing quality!',
  ),
];