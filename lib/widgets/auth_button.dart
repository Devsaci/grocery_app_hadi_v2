import 'package:flutter/material.dart';

import 'text_widget.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.fct,
    required this.buttonText,
    this.primary = Colors.white38,
  });
  final Function fct;
  final String buttonText;
  final Color primary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary, // background (button) color
        ),
        onPressed: () {},
        child: TextWidget(
          text: buttonText,
          textSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
