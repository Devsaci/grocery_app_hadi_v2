import 'package:flutter/material.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        ],
      ),
    );
  }
}
