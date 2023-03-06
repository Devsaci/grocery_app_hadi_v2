import 'package:flutter/material.dart';
import 'package:grocery_app_hadi_v1/widgets/back_widget.dart';
import 'package:grocery_app_hadi_v1/widgets/text_widget.dart';

import '../../services/utils.dart';

class OrdersScreen extends StatefulWidget {
  static const routeName = '/OrderScreen';
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    return Scaffold(
      appBar: AppBar(
        leading: const BackWidget(),
        elevation: 0,
        centerTitle: true,
        title: TextWidget(
          text: 'Your orders (2)',
          color: color,
          textSize: 20.0,
          isTitle: true,
        ),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
