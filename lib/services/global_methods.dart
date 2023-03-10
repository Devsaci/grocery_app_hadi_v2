import 'package:flutter/material.dart';

import '../widgets/text_widget.dart';

class GlobalMethods {
  static navigateTo({
    required BuildContext ctx,
    required String routeName,
  }) {
    Navigator.pushNamed(ctx, routeName);
  }

  //40. Impelement the warning dialog
  static Future<void> warningDialog({
    required String title,
    required String subtitle,
    required Function fct,
    required BuildContext context,
  }) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Row(
              children: [
                Image.asset(
                  'assets/images/warning-sign.png',
                  height: 40,
                  width: 40,
                  fit: BoxFit.fill,
                ),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
            content: Text(
              subtitle,
              style: const TextStyle(fontSize: 15),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                },
                child: TextWidget(
                  text: "Cancel",
                  color: Colors.cyan,
                  textSize: 20,
                ),
              ),
              TextButton(
                onPressed: () {
                  fct();
                },
                child: TextWidget(
                  text: "OK",
                  color: Colors.red,
                  textSize: 20,
                ),
              ),
            ],
          );
        });
  }
}
