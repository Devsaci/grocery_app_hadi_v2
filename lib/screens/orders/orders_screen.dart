import 'package:flutter/material.dart';
import 'package:grocery_app_hadi_v1/screens/orders/orders_widget.dart';
import 'package:grocery_app_hadi_v1/widgets/back_widget.dart';
import 'package:grocery_app_hadi_v1/widgets/text_widget.dart';

import '../../services/utils.dart';
import '../../widgets/empty_screen.dart';

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
    bool _isEmpty = true;
    return _isEmpty
        ? const EmptyScreen(
            title: 'Your cart is empty',
            subtitle: 'Add something and make me happy',
            buttonText: 'Shop now',
            imagePath: "assets/images/cart.png",
          )
        // ignore: dead_code
        : Scaffold(
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
              backgroundColor:
                  Theme.of(context).scaffoldBackgroundColor.withOpacity(0.8),
            ),
            body: ListView.separated(
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 2, vertical: 6),
                child: OrderWidget(),
              ),
              separatorBuilder: (context, index) {
                return Divider(
                  color: color,
                  thickness: 2,
                );
              },
              itemCount: 50,
            ),
          );
  }
}
