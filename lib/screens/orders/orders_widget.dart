import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

class OrderWidget extends StatefulWidget {
  const OrderWidget({super.key});

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      subtitle: const Text('Paid: \$12.8'),
      onTap: () {},
      leading: FancyShimmerImage(
        imageUrl: 'https://i.ibb.co/F0s3FHQ/Apricots.png',
      ),
    );
  }
}
