import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app_hadi_v1/services/utils.dart';

class ViewedRecentlyWidget extends StatefulWidget {
  const ViewedRecentlyWidget({super.key});

  @override
  State<ViewedRecentlyWidget> createState() => _ViewedRecentlyWidgetState();
}

class _ViewedRecentlyWidgetState extends State<ViewedRecentlyWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).getScreenSize;
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          FancyShimmerImage(
            imageUrl: 'https://i.ibb.co/F0s3FHQ/Apricots.png',
            boxFit: BoxFit.fill,
            height: size.width * 0.27,
            width: size.width * 0.25,
          ),
        ],
      ),
    );
  }
}
