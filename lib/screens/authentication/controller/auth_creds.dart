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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Form(
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Sign Up', style: TextStyle(color: Colors.white)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Forgot password?', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
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
      ),
    );
  }
}

