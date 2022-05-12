import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../services/instances/firebase.dart';

class ForgotPasswordSubmit extends ConsumerWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;

  const ForgotPasswordSubmit({
    Key? key,
    required this.formKey,
    required this.emailController,
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
              child: const Text('Send Verification Email'),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  FirebaseService.instance.sendPasswordResetEmail(
                    emailController.text,
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

