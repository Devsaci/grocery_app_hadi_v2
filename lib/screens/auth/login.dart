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
        ],
      ),
    );
  }
}
