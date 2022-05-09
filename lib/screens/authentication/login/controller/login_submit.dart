import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../services/instances/firebase.dart';

class LoginSubmit extends ConsumerWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginSubmit({
    Key? key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  }) :  super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Consumer(
        builder: (context, ref, _) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white, // background (button) color
              onPrimary: Colors.black,
              elevation: 10,
              shadowColor: Colors.blue,
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
            ),
            child: Text('Login'),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                FirebaseService.instance.signInWithEmailAndPassword(
                  emailController.text,
                  passwordController.text,
                  ref,
                  context
                );
              }
            },
          );
        }
      ),
    );
  }
}

