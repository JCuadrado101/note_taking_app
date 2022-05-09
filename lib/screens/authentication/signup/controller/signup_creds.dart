import 'package:flutter/material.dart';
import '../../../widgets/auth_fields.dart';
import '../widgets/signup_submit.dart';

class SignUpCred extends StatefulWidget {
  const SignUpCred({Key? key}) : super(key: key);

  @override
  State<SignUpCred> createState() => _SignUpCredState();
}

class _SignUpCredState extends State<SignUpCred> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              AuthFields(
                controller: _emailController,
                labelHint: 'Enter Email',
                keyboardType: TextInputType.emailAddress,
                icon: Icons.email,
                validator: (value) {
                  if (value == null || value.isEmpty || !value.contains('@')) {
                    return 'Please enter valid email';
                  }
                  return null;
                },
              ),
              AuthFields(
                controller: _passwordController,
                labelHint: 'Create Password',
                keyboardType: TextInputType.visiblePassword,
                icon: Icons.lock,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              SignInSubmit(
                formKey: _formKey,
                emailController: _emailController,
                passwordController: _passwordController,
              ),
            ],
          )
      ),
    );
  }
}
