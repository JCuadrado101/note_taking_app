import 'package:flutter/material.dart';

import 'login/controller/login_creds.dart';
import 'login/widgets/login_animation.dart';
import '../widgets/auth_color.dart';
import '../widgets/auth_header.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthColor(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            LoginAnimation(),
            AuthHeader(title: 'The Notes App'),
            AuthCred(),
          ],
        ),
      ),
    );
  }
}
