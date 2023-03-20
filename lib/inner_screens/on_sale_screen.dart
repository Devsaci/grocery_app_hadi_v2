//30. Implement the sale screen

import 'package:flutter/material.dart';
import '../../widgets/back_widget.dart';

import '../services/utils.dart';
import '../widgets/on_sale_widget.dart';
import '../widgets/text_widget.dart';

class OnSaleScreen extends StatefulWidget {
  static const routeName = "/OnSaleScreen";
  const OnSaleScreen({Key? key}) : super(key: key);

  @override
  State<OnSaleScreen> createState() => _OnSaleScreenState();
}

class _OnSaleScreenState extends State<OnSaleScreen> {
  @override
  Widget build(BuildContext context) {
    //32. Handle UI if there is no products on sale. (Create new UI to it)
    bool _isEmpty = false;
    final Utils utils = Utils(context);
    final Color color = Utils(context).color;
    Size size = utils.getScreenSize;
    return Scaffold(
      appBar: AppBar(
        leading: const BackWidget(),
        elevation: 5,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: TextWidget(
          text: 'Products on sale',
          color: color,
          textSize: 18.0,
          isTitle: true,
        ),
      ),
      body: _isEmpty
          // ignore: dead_code
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/box.png',
                      ),
                    ),
                    Text(
                      'No products on sale yet!,\nStay tuned',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: color,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            )
          // ignore: dead_code
          : GridView.count(
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
