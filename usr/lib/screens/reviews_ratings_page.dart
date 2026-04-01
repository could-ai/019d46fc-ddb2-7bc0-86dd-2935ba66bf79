import 'package:flutter/material.dart';
import '../models/mock_data.dart';

class ReviewsRatingsPage extends StatelessWidget {
  const ReviewsRatingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reviews & Ratings')),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: const Text('Rate Product')),
          Expanded(
            child: ListView.builder(
              itemCount: mockReviews.length,
              itemBuilder: (context, index) {
                final review = mockReviews[index];
                return ListTile(
                  title: Text('${review.customerName}: ${review.rating} stars'),
                  subtitle: Text(review.comment),
                );
              },
            ),
          ),
          const Text('Farmer Ratings: 4.5/5'),
        ],
      ),
    );
  }
}