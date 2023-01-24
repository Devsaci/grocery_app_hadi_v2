import 'package:flutter/material.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({super.key});

  @override
  State<CartWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CartWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.amber[100],
          )
        ],
      ),
    );
  }
}
