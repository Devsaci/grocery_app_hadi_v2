import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_app_hadi_v1/screens/wishlist/wishlist_widget.dart';
import 'package:grocery_app_hadi_v1/widgets/back_widget.dart';

import '../../services/utils.dart';
import '../../widgets/text_widget.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});
  static const routeName = "/WishlistScreen";

  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        leading: const BackWidget(),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: TextWidget(
          text: 'Wishlist (2)',
          color: color,
          isTitle: true,
          textSize: 22,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              IconlyBroken.delete,
              color: color,
            ),
          ),
        ],
      ),
      body: const WishlistWidget(),
    );
  }
}
