import 'package:flutter/material.dart';

class AuthColor extends StatelessWidget {
  final Widget child;
  const AuthColor({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue,
            Colors.green,
          ],
        ),
      ),
      child: child,
    );
  }
}
