import 'package:flutter/material.dart';
import '../../widgets/auth_color.dart';
import '../../widgets/auth_header.dart';
import 'controller/signup_creds.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
            AuthHeader(title: 'Sign Up'),
            SignUpCred(),
          ],
        ),
      ),
    );
  }
}
