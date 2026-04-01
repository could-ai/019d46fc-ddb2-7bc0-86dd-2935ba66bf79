import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  String _role = 'customer';
  String _name = '', _email = '', _phone = '', _address = '';
  String _farmName = '', _location = '', _productType = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              DropdownButtonFormField<String>(
                value: _role,
                items: ['customer', 'farmer'].map((role) => DropdownMenuItem(value: role, child: Text(role))).toList(),
                onChanged: (value) => setState(() => _role = value!),
              ),
              if (_role == 'customer') ...[
                TextFormField(decoration: const InputDecoration(labelText: 'Name'), validator: (v) => v!.isEmpty ? 'Required' : null, onSaved: (v) => _name = v!),
                TextFormField(decoration: const InputDecoration(labelText: 'Phone'), validator: (v) => v!.isEmpty ? 'Required' : null, onSaved: (v) => _phone = v!),
                TextFormField(decoration: const InputDecoration(labelText: 'Address'), validator: (v) => v!.isEmpty ? 'Required' : null, onSaved: (v) => _address = v!),
              ] else ...[
                TextFormField(decoration: const InputDecoration(labelText: 'Farm Name'), validator: (v) => v!.isEmpty ? 'Required' : null, onSaved: (v) => _farmName = v!),
                TextFormField(decoration: const InputDecoration(labelText: 'Location'), validator: (v) => v!.isEmpty ? 'Required' : null, onSaved: (v) => _location = v!),
                TextFormField(decoration: const InputDecoration(labelText: 'Product Type'), validator: (v) => v!.isEmpty ? 'Required' : null, onSaved: (v) => _productType = v!),
                const Text('Upload ID Proof (Mock - File Picker TBD)'),
              ],
              TextFormField(decoration: const InputDecoration(labelText: 'Email'), validator: (v) => v!.isEmpty ? 'Required' : null, onSaved: (v) => _email = v!),
              ElevatedButton(onPressed: () { if (_formKey.currentState!.validate()) { _formKey.currentState!.save(); Navigator.pop(context); } }, child: const Text('Submit')),
            ],
          ),
        ),
      ),
    );
  }
}