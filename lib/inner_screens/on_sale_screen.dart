//30. Implement the sale screen

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_app_hadi_v1/services/utils.dart';
import 'package:grocery_app_hadi_v1/widgets/on_sale_widget.dart';

class OnSaleScreen extends StatefulWidget {
  static const routeName = "/OnSleScreen";
  const OnSaleScreen({super.key});

  @override
  State<OnSaleScreen> createState() => _OnSaleScreenState();
}

class _OnSaleScreenState extends State<OnSaleScreen> {
  @override
  Widget build(BuildContext context) {
    final Utils utils = Utils(context);
    final Color color = Utils(context).color;
    Size size = utils.getScreenSize;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            IconlyLight.arrowLeft2,
            color: color,
          ),
        ),
        elevation: 5,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        padding: EdgeInsets.zero,
        childAspectRatio: size.width / (size.height * 0.59),
        children: List.generate(6, (index) => const OnSaleWidget()),
      ),
    );
  }
}
