import 'package:flutter/material.dart';
import 'package:grocery_app_hadi_v1/widgets/text_widget.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Container(
              child: Image.asset("assets/images/google.png"),
              width: 40.0,
            ),
            TextWidget(
              text: 'Sign in with google',
              color: Colors.white,
              textSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}
