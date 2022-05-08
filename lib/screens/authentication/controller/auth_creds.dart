import 'package:flutter/material.dart';
import '../widgets/auth_fields.dart';

class AuthCred extends StatefulWidget {
  const AuthCred({Key? key}) : super(key: key);

  @override
  State<AuthCred> createState() => _AuthCredState();
}

class _AuthCredState extends State<AuthCred> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AuthFields(
            controller: _emailController,
            labelHint: 'Email',
            keyboardType: TextInputType.emailAddress,
            icon: Icons.email,
            validator: (value) {
              if (value == null || value.isEmpty || !value.contains('@')) {
                return 'Please enter valid email';
              }
              return null;
            },
          ),
          AuthFields(
            controller: _passwordController,
            labelHint: 'Password',
            keyboardType: TextInputType.visiblePassword,
            icon: Icons.lock,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                print('Form is valid');
              }
            },
            child: const Text('Login'),
          ),
        ],
      )
    );
  }
}

