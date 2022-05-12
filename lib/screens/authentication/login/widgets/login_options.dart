import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthOptions extends StatelessWidget {
  const AuthOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () => context.push('/signup'),
            child: const Text('Sign Up', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => context.push('/forgot-password'),
            child: const Text('Forgot password?', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
