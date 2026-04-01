import 'package:flutter/material.dart';

class ContactSupportPage extends StatelessWidget {
  const ContactSupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact Us')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text('Customer Support Form'),
            TextFormField(decoration: const InputDecoration(labelText: 'Name')),
            TextFormField(decoration: const InputDecoration(labelText: 'Message')),
            ElevatedButton(onPressed: () {}, child: const Text('Submit')),
            const SizedBox(height: 20),
            const Text('Phone: 123-456-7890'),
            const Text('Email: support@farmtohome.com'),
            const ExpansionTile(title: Text('FAQ'), children: [Text('Q: How to order? A: Shop now!')]),
          ],
        ),
      ),
    );
  }
}