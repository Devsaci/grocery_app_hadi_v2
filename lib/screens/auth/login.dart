import 'package:flutter/material.dart';

import '../../widgets/text_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Stack(
        children: [
          Image.asset("name"),
          Container(
            color: Colors.black.withOpacity(0.7),
          ),
          Container(),
          Column(
            children: [
              const SizedBox(height: 120.0),
              TextWidget(
                text: 'Welcome Back',
                color: Colors.white,
                textSize: 30,
                isTitle: true,
              ),
              const SizedBox(
                height: 8,
              ),
              TextWidget(
                text: "Sign in to continue",
                color: Colors.white,
                textSize: 18,
                isTitle: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
