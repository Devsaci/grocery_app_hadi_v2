import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_app_hadi_v1/widgets/text_widget.dart';
import '../../inner_screens/product_details.dart';
import '../../services/global_methods.dart';

import '../../services/utils.dart';
import '../../widgets/heart_btn.dart';

class WishlistWidget extends StatelessWidget {
  const WishlistWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () {
          GlobalMethods.navigateTo(
              ctx: context, routeName: ProductDetails.routeName);
        },
        child: Container(
          height: size.height * 0.20,
          //width: 100,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            border: Border.all(color: Colors.deepOrange, width: 1.5),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 8),
                width: size.width * 0.2,
                height: size.width * 0.25,
                child: FancyShimmerImage(
                  imageUrl: 'https://i.ibb.co/F0s3FHQ/Apricots.png',
                  boxFit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            if (kDebugMode) {
                              print("IconButton  IconlyBold.bag2  is pressed");
                            }
                          },
                          icon: Icon(
                            IconlyBold.bag2,
                            color: Colors.lightGreenAccent.shade700,
                          ),
                        ),
                        const HeartBTN(),
                      ],
                    ),
                  ),
                  Flexible(
                    child: TextWidget(
                      text: 'Title',
                      color: color,
                      textSize: 12.0,
                      maxLines: 2,
                      isTitle: true,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextWidget(
                    text: '\$2.59',
                    color: color,
                    textSize: 15.0,
                    maxLines: 1,
                    isTitle: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
