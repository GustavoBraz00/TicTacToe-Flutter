import 'package:flutter/material.dart';

import '../core/constants.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final String message;
  final Function onPressed;

  const CustomDialog({
    this.title,
    this.message,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        FlatButton(
          child: Text(kResetButtonLabel),
          onPressed: () {
            Navigator.pop(context);
            onPressed();
          },
        )
      ],
    );
  }
}
