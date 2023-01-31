import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_app_hadi_v1/widgets/text_widget.dart';

import '../../services/utils.dart';
import 'cart_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: TextWidget(
            text: 'Cart (2)',
            color: color,
            isTitle: true,
            textSize: 22,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(IconlyBroken.delete),
              color: color,
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              color: Colors.amber,
              width: double.infinity,
              height: size.height * 0.1,
              child: Row(
                children: [
                  Material(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (ctx, index) {
                  return const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CartWidget(),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
