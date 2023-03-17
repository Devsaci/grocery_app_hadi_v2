import 'package:flutter/material.dart';
import 'package:grocery_app_hadi_v1/inner_screens/feeds_screen.dart';
import 'package:grocery_app_hadi_v1/services/global_methods.dart';

import '../../services/utils.dart';
import '../../widgets/text_widget.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.buttonText,
  });
  final String imagePath, title, subtitle, buttonText;
  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).getScreenSize;
    final Color color = Utils(context).color;
    final themeState = Utils(context).getTheme;
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Image.asset(imagePath),
            const SizedBox(height: 10),
            const Text(
              'Whoops!',
              style: TextStyle(
                  color: Colors.red, fontSize: 40, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 20),
            TextWidget(text: title, color: Colors.cyan, textSize: 20),
            const SizedBox(height: 20),
            TextWidget(text: subtitle, color: Colors.cyan, textSize: 20),
            SizedBox(height: size.height * 0.1),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(color: Colors.black, width: 3),
                  ),
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10)),
              onPressed: () {
                GlobalMethods.navigateTo(
                    ctx: context, routeName: FeedsScreen.routeName);
              },
              child: TextWidget(
                text: buttonText,
                color: themeState ? Colors.grey.shade300 : Colors.grey.shade900,
                textSize: 20,
                isTitle: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
