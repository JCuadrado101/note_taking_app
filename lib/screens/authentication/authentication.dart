import 'package:flutter/material.dart';
import 'package:note_taking_app/screens/authentication/widgets/auth_animation.dart';
import 'package:note_taking_app/screens/authentication/widgets/auth_color.dart';
import 'package:note_taking_app/screens/authentication/widgets/auth_header.dart';

import 'controller/auth_creds.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthColor(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            AuthAnimation(),
            AuthHeader(),
            AuthCred(),
          ],
        ),
      ),
    );
  }
}
