import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_app_hadi_v1/inner_screens/product_details.dart';
import 'package:grocery_app_hadi_v1/services/global_methods.dart';

import '../../services/utils.dart';
import '../../widgets/heart_btn.dart';
import '../../widgets/text_widget.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({super.key});

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  final _quantityTextController = TextEditingController();

  @override
  void initState() {
    _quantityTextController.text = "1";
    super.initState();
  }

  @override
  void dispose() {
    _quantityTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;
    return GestureDetector(
      onTap: () {
        GlobalMethods.navigateTo(
            ctx: context, routeName: ProductDetails.routeName);
      },
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                decoration: BoxDecoration(
                  color:
                      Theme.of(context).colorScheme.background.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Container(
                      height: size.width * 0.25,
                      width: size.width * 0.25,
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: FancyShimmerImage(
                        imageUrl: "https://i.ibb.co/F0s3FHQ/Apricots.png",
                        boxFit: BoxFit.fill,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: 'Title',
                          color: color,
                          textSize: 20,
                          isTitle: true,
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: size.width * 0.3,
                          child: Row(
                            children: [
                              _quantityController(
                                fct: () {
                                  if (_quantityTextController.text == '1') {
                                    return;
                                  } else {
                                    setState(() {
                                      _quantityTextController.text = (int.parse(
                                                  _quantityTextController
                                                      .text) - 1).toString();
                                    });
                                  }
                                },
                                icon: CupertinoIcons.minus,
                                color: Colors.red,
                              ),
                              Flexible(
                                flex: 1,
                                child: TextField(
                                  controller: _quantityTextController,
                                  keyboardType: TextInputType.number,
                                  maxLines: 1,
                                  decoration: const InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(),
                                    ),
                                  ),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                      RegExp('[0-9]'),
                                    )
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      if (value.isEmpty) {
                                        _quantityTextController.text = '1';
                                      } else {
                                        return;
                                      }
                                    });
                                  },
                                ),
                              ),
                              _quantityController(
                                fct: () {
                                  // 38. Implement the quantity text controller function
                                  setState(() {
                                    _quantityTextController.text = (int.parse(
                                                _quantityTextController.text) +
                                            1)
                                        .toString();
                                  });
                                },
                                icon: CupertinoIcons.plus,
                                color: Colors.green,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              CupertinoIcons.cart_badge_minus,
                              color: Colors.red,
                              size: 20,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const HeartBTN(),
                          TextWidget(
                            text: '\$0.29',
                            color: color,
                            textSize: 18,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _quantityController({
    required Function fct,
    required IconData icon,
    required Color color,
  }) {
    return Flexible(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Material(
          color: color,
          borderRadius: BorderRadius.circular(15),
          child: InkWell(
            onTap: () {
              fct();
            },
            borderRadius: BorderRadius.circular(15),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(icon, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
