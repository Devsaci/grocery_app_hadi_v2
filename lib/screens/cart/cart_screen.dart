import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'cart_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(IconlyBold.delete),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (ctx, index) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: CartWidget(),
            );
          },
        ));
  }
}
