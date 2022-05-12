import 'package:flutter/material.dart';
import '../../../widgets/auth_fields.dart';
import '../widgets/password_submit.dart';

class ForgotPasswordCred extends StatefulWidget {
  const ForgotPasswordCred({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordCred> createState() => _ForgotPasswordCredState();
}

class _ForgotPasswordCredState extends State<ForgotPasswordCred> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

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
                labelHint: 'Enter your email',
                keyboardType: TextInputType.emailAddress,
                icon: Icons.email,
                validator: (value) {
                  if (value == null || value.isEmpty || !value.contains('@')) {
                    return 'Please enter valid email';
                  }
                  return null;
                },
              ),
              ForgotPasswordSubmit(
                formKey: _formKey,
                emailController: _emailController,
              ),
            ],
          )
      ),
    );
  }
}
