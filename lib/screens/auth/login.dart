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
      body: Column(
        children: [
          const SizedBox(height: 120.0),
          TextWidget(
            text: 'Welcome Back',
            color: Colors.white,
            textSize: 30,
            isTitle: true,
          ),
        ],
      ),
    );
  }
}
