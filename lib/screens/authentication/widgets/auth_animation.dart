import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AuthAnimation extends StatelessWidget {
  const AuthAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/animations/auth.json',
      repeat: false,
    );
  }
}
