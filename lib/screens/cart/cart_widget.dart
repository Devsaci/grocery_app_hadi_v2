import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

import '../../services/utils.dart';
import '../../widgets/text_widget.dart';

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
      child: Row(
        /// mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: size.width * 0.25,
            width: size.width * 0.25,
            decoration: BoxDecoration(
              //color: Theme.of(context).cardColor,
              color: Theme.of(context).cardColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: FancyShimmerImage(
              imageUrl: "https://i.ibb.co/F0s3FHQ/Apricots.png",
              boxFit: BoxFit.fill,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: 'Title',
                color: color,
                textSize: 20,
                isTitle: true,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Material(
                    color: color,
                    borderRadius: BorderRadius.circular(15),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(15),
                      child: Icon(Icons.plus_one, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
