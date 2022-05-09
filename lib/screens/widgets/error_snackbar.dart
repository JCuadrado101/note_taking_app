import 'package:flutter/material.dart';

void showErrorSnackbar(BuildContext context, String message, Icon icon) {
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
