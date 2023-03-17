import 'package:flutter/material.dart';

import '../../services/utils.dart';
import '../../widgets/text_widget.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).getScreenSize;
    final Color color = Utils(context).color;
    final themeState = Utils(context).getTheme;
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Image.asset("assets/images/cart.png"),
          const SizedBox(height: 10),
          const Text(
            'Whoops!',
            style: TextStyle(
                color: Colors.red, fontSize: 40, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 20),
          TextWidget(text: "title", color: Colors.cyan, textSize: 20),
          const SizedBox(height: 20),
          TextWidget(text: "subtitle", color: Colors.cyan, textSize: 20),
          SizedBox(height: size.height * 0.1),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 5,
            ),
            onPressed: () {},
            child: TextWidget(
              text: "buttonText",
              color: themeState ? Colors.grey.shade300 : Colors.grey.shade900,
              textSize: 20,
              isTitle: true,
            ),
          )
        ],
      ),
    );
  }
}
