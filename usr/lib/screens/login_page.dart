import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _emailOrPhone = '';
  String _password = '';
  String _role = 'customer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              DropdownButtonFormField<String>(
                value: _role,
                items: ['customer', 'farmer', 'admin'].map((role) => DropdownMenuItem(value: role, child: Text(role))).toList(),
                onChanged: (value) => setState(() => _role = value!),
                decoration: const InputDecoration(labelText: 'Login as'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email or Phone'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onSaved: (value) => _emailOrPhone = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) => value!.length < 6 ? 'Min 6 chars' : null,
                onSaved: (value) => _password = value!,
              ),
              TextButton(onPressed: () {}, child: const Text('Forgot Password?')),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Mock login - navigate based on role
                    if (_role == 'farmer') Navigator.pushReplacementNamed(context, '/farmer-dashboard');
                    else if (_role == 'admin') Navigator.pushReplacementNamed(context, '/admin-dashboard');
                    else Navigator.pop(context);
                  }
                },
                child: const Text('Login'),
              ),
              TextButton(onPressed: () => Navigator.pushNamed(context, '/register'), child: const Text('Register')),
            ],
          ),
        ),
      ),
    );
  }
}