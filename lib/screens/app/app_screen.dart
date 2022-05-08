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
          onPressed: () {
            Navigator.pushNamed(context, '/');
          }
        ),
      ),
    );
  }
}
