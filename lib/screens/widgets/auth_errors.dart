import 'package:flutter/material.dart';

void authErrorSnackbar(BuildContext context, String message, Icon icon) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        children: [
          icon,
          const SizedBox(width: 10),
          Expanded(
            child: Text(message),
          ),
        ],
      ),
    ),
  );
}
