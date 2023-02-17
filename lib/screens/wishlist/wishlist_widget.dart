import 'package:flutter/material.dart';
import '../../inner_screens/product_details.dart';
import '../../services/global_methods.dart';

import '../../services/utils.dart';

class WishlistWidget extends StatelessWidget {
  const WishlistWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;
    return GestureDetector(
      onTap: () {
        GlobalMethods.navigateTo(
            ctx: context, routeName: ProductDetails.routeName);
      },
      child: Container(
        height: size.height * 0.20,
        //width: 100,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          border: Border.all(color: color, width: 1),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 8),
              width: size.width * 0.2,
              height: size.width * 0.25,
            ),
          ],
        ),
      ),
    );
  }
}
