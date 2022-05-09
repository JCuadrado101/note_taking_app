import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeader extends StatelessWidget {
  final String title;
  const AuthHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 100),
      child: Text(title,
        style: GoogleFonts.courgette(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )
      ),
    );
  }
}
