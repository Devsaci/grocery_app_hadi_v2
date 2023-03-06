import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

import '../../services/utils.dart';

class OrderWidget extends StatefulWidget {
  const OrderWidget({super.key});

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).getScreenSize;
    return ListTile(
      subtitle: const Text('Paid: \$12.8'),
      onTap: () {},
      leading: FancyShimmerImage(
        width: size.width * 0.2,
        imageUrl: 'https://i.ibb.co/F0s3FHQ/Apricots.png',
        boxFit: BoxFit.fill,
      ),
    );
  }
}
