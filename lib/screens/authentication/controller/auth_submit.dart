import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../services/instances/firebase.dart';

class AuthSubmit extends ConsumerWidget {
  const AuthSubmit({
    Key? key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) : _formKey = formKey, _emailController = emailController, _passwordController = passwordController, super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (context, ref, _) {
        return ElevatedButton(
          child: const Text('Login'),
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              FirebaseService.instance.signInWithEmailAndPassword(
                _emailController.text,
                _passwordController.text,
                ref,
                context
              );
            }
          },
        );
      }
    );
  }
}

