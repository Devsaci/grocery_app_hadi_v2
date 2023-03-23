import 'package:flutter/material.dart';
import 'package:grocery_app_hadi_v1/widgets/text_widget.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Image.asset("name"),
          ],
        ),
      ),
    );
  }
}
