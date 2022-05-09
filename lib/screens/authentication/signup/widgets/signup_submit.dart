import 'package:flutter/material.dart';
import '../../../../services/instances/firebase.dart';

class SignInSubmit extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const SignInSubmit({
    Key? key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  }) :  super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white, // background (button) color
          onPrimary: Colors.black,
          elevation: 10,
          shadowColor: Colors.blue,
          padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
        ),
        child: const Text('Sign Up'),
        onPressed: () {
          if (formKey.currentState!.validate()) {
            FirebaseService.instance.createUserWithEmailAndPassword(
              emailController.text,
              passwordController.text,
              context
            );
          }
        },
      ),
    );
  }
}

