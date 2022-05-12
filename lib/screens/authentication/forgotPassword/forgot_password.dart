import 'package:flutter/material.dart';
import '../../widgets/auth_color.dart';
import '../../widgets/auth_header.dart';
import 'controller/password_creds.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: AuthColor(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            AuthHeader(title: 'Forgot Password?'),
            ForgotPasswordCred(),
          ],
        ),
      ),
    );
  }
}
