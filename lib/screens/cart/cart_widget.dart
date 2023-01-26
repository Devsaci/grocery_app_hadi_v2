import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

import '../../services/utils.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({super.key});

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;
    return GestureDetector(
      onTap: () {},
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                height: size.width * 0.25,
                width: size.width * 0.25,
                decoration: BoxDecoration(
                  //color: Theme.of(context).cardColor,
                  color: Colors.amber.shade300,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: FancyShimmerImage(
                  imageUrl: "https://i.ibb.co/F0s3FHQ/Apricots.png",
                  boxFit: BoxFit.fill,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
