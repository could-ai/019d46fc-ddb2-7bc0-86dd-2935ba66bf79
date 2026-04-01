import 'package:flutter/material.dart';
import 'models/mock_data.dart';
import 'screens/home_page.dart';
import 'screens/login_page.dart';
import 'screens/registration_page.dart';
import 'screens/farmer_dashboard.dart';
import 'screens/product_listing_page.dart';
import 'screens/product_details_page.dart';
import 'screens/cart_page.dart';
import 'screens/checkout_page.dart';
import 'screens/order_tracking_page.dart';
import 'screens/reviews_ratings_page.dart';
import 'screens/admin_dashboard.dart';
import 'screens/contact_support_page.dart';
import 'screens/about_us_page.dart';
import 'screens/farmer_stories_page.dart';
import 'screens/subscription_orders_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farm-to-Home E-Commerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          primary: Colors.green,
          secondary: Colors.lightGreen,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegistrationPage(),
        '/farmer-dashboard': (context) => const FarmerDashboard(),
        '/product-listing': (context) => const ProductListingPage(),
        '/product-details': (context) => const ProductDetailsPage(),
        '/cart': (context) => const CartPage(),
        '/checkout': (context) => const CheckoutPage(),
        '/order-tracking': (context) => const OrderTrackingPage(),
        '/reviews-ratings': (context) => const ReviewsRatingsPage(),
        '/admin-dashboard': (context) => const AdminDashboard(),
        '/contact-support': (context) => const ContactSupportPage(),
        '/about-us': (context) => const AboutUsPage(),
        '/farmer-stories': (context) => const FarmerStoriesPage(),
        '/subscription-orders': (context) => const SubscriptionOrdersPage(),
      },
    );
  }
}