import 'package:flutter/material.dart';

import 'text_widget.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.fct,
    required this.buttonText,
    required this.primary,
  });
  final Function fct;
  final String buttonText;
  final Color primary;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: TextWidget(
        text: buttonText,
        textSize: 18,
        color: Colors.white,
      ),
    );
  }
}
