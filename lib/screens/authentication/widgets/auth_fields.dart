import 'package:flutter/material.dart';

class AuthFields extends StatefulWidget {
  final String labelHint;
  final IconData icon;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  const AuthFields({
    Key? key,
    required this.labelHint,
    required this.icon,
    required this.keyboardType,
    required TextEditingController controller,
    required this.validator,
  }) : _controller = controller, super(key: key);

  final TextEditingController _controller;

  @override
  State<AuthFields> createState() => _AuthFieldsState();
}

class _AuthFieldsState extends State<AuthFields> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: widget._controller,
        obscureText: widget.labelHint == 'Password' && !showPassword,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          labelStyle: const TextStyle(color: Colors.grey),
          floatingLabelStyle: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          labelText: widget.labelHint,
          border: const OutlineInputBorder(),
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(widget.icon),
          suffixIcon: Visibility(
            visible: widget.labelHint == 'Password',
              child: IconButton(
                icon: !showPassword ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                }
              ),
          ),
        ),
        validator: widget.validator,
      ),
    );
  }
}
