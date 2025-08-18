import 'package:flutter/material.dart'
    show BuildContext, ScaffoldMessenger, SnackBar, Text, Colors;

enum SnackBarType { succes, error }

extension SnackBarExtension on BuildContext {
  void showSnackBar(SnackBarType snackBarType, String message) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: switch (snackBarType) {
            SnackBarType.succes => Colors.green,
            SnackBarType.error => Colors.redAccent,
          },
        ),
      );
  }
}
