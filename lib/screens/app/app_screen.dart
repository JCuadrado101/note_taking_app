import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: TextButton(
          child: const Text('Go to Home'),
          onPressed: () async {
            print(FirebaseAuth.instance.currentUser);
            await FirebaseAuth.instance.signOut();
          }
        ),
      ),
    );
  }
}
