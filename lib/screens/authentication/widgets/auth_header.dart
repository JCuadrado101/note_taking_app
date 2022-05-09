import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 100),
      child: Text('The Notes App',
        style: GoogleFonts.courgette(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )
      ),
    );
  }
}
