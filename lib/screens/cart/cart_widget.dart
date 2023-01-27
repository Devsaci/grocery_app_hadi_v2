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
              SizedBox(
                width: size.width * 0.3,
                child: Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Material(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15),
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(15),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.plus_one, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Material(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(15),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.plus_one, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _quantityController({
    required Function fct,
    required IconData icon,
    required Color color,
  }) {
    return Flexible(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Material(
          color: Colors.green,
          borderRadius: BorderRadius.circular(15),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(15),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.plus_one, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
