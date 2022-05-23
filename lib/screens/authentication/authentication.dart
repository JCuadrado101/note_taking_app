import 'package:flutter/material.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import '../../services/instances/google.dart';
import 'login/controller/login_creds.dart';
import 'login/widgets/auth_two_button.dart';
import 'login/widgets/login_animation.dart';
import '../widgets/auth_color.dart';
import '../widgets/auth_header.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: AuthColor(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LoginAnimation(),
              const AuthHeader(title: 'The Notes App'),
              const AuthCred(),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 Auth2Button(
                  onPressed: () => GoogleAuth.signInWithGoogle(context),
                  assetName: 'assets/images/google.svg',
                  semanticLabel: 'Sign in with Google',
                  ),
                  Auth2Button(
                    onPressed: () => SignInWithApple.getAppleIDCredential(
                      scopes: [
                        AppleIDAuthorizationScopes.email,
                        AppleIDAuthorizationScopes.fullName,
                      ],
                      webAuthenticationOptions: WebAuthenticationOptions(
                        // TODO: Set the `clientId` and `redirectUri` arguments to the values you entered in the Apple Developer portal during the setup
                          clientId:
                          'com.example.theNoteTakingAppNonIos',

                          redirectUri: Uri.parse('https://note-taking-app-64c85.firebaseapp.com/__/auth/handler'),
                      ),
                    ),
                    assetName: 'assets/images/apple.svg',
                    semanticLabel: 'Sign in with Apple',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
