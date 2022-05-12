import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../services/instances/google.dart';

class Auth2Button extends StatelessWidget {
  final String assetName;
  final String semanticLabel;
  final VoidCallback onPressed;
  const Auth2Button({
    Key? key,
    required this.assetName,
    required this.semanticLabel,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: 60,
        height: 60,
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              assetName,
              semanticsLabel: semanticLabel,
            ),
          ),
        ),
      ),
    );
  }
}
